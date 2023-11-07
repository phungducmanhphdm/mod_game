package com.hz.gui;

import com.hz.common.Tool;
import com.hz.ui.UIHandler;
import java.util.Vector;

/* loaded from: C:\Users\phung\AppData\Local\Temp\jadx-12577774076037738185.dex */
public class GContainer extends GWidget {
    public static final int GW_BORDER_LAYOUT_CENTER = 4;
    public static final int GW_BORDER_LAYOUT_EAST = 3;
    public static final int GW_BORDER_LAYOUT_NORTH = 0;
    public static final int GW_BORDER_LAYOUT_SOUTH = 1;
    public static final int GW_BORDER_LAYOUT_WEST = 2;
    public static final int GW_LAYOUT_ALIGN_FILL = 256;
    public static final int GW_LAYOUT_ALIGN_HCENTER = 512;
    public static final int GW_LAYOUT_ALIGN_NONE = 0;
    public static final int GW_LAYOUT_ALIGN_VCENTER = 1024;
    public static final int GW_LAYOUT_TYPE_BORDER = 17;
    public static final int GW_LAYOUT_TYPE_GRID = 4;
    public static final int GW_LAYOUT_TYPE_GRID2 = 8;
    public static final int GW_LAYOUT_TYPE_GRID3 = 16;
    public static final int GW_LAYOUT_TYPE_H = 1;
    public static final int GW_LAYOUT_TYPE_NONE = 0;
    public static final int GW_LAYOUT_TYPE_V = 2;
    private static final int LAYOUT_DATA_SIZE = 6;
    public static final int L_ALIGN = 3;
    public static final int L_COLS = 5;
    public static final int L_DOWN_GAP = 2;
    public static final int L_GRID_H = 5;
    public static final int L_GRID_W = 4;
    public static final int L_HGAP = 1;
    public static final int L_LEFT_GAP = 3;
    public static final int L_MODE = 0;
    public static final int L_RIGHT_GAP = 4;
    public static final int L_ROWS = 4;
    public static final int L_UP_GAP = 1;
    public static final int L_VGAP = 2;
    private static final int MAX_VIEW_INDEX = 65535;
    static Object lock = new Object();
    protected boolean canCatchKey;
    public Vector children;
    public int firstInViewIndex;
    GScrollBar gsb;
    protected boolean isCatchHotKey;
    public boolean isIntersectView;
    public int lastInViewIndex;
    public int[] layoutData;
    public boolean needScrollBar;
    public Vector topDrawVector;

    public void addTopDraw(IGTopDraw draw) {
        if (this.topDrawVector == null) {
            this.topDrawVector = new Vector(); // fff
        }
        this.topDrawVector.addElement(draw);
    }

    public Object getJavaTopDraw(int index) {
        if (this.topDrawVector != null && index >= 0 && index < this.topDrawVector.size()) {
            return this.topDrawVector.elementAt(index);
        }
        return null;
    }

    public GContainer(int[] _data) {
        super(_data);
        this.children = new Vector();
        this.firstInViewIndex = -1;
        this.lastInViewIndex = -1;
        this.layoutData = new int[LAYOUT_DATA_SIZE];
        setScale(true);
        setType(50);
    }

    public void clear() {
        destroyChild();
        resetGSB();
    }

    public void takeAway() {
        int size = this.children.size();
        for (int i = size - 1; i >= 0; i--) {
            GWidget gwidget = (GWidget) this.children.elementAt(i);
            if (gwidget != null) {
                remove(gwidget, false);
            }
        }
        resetGSB();
    }

    public void resetGSB() {
        if (this.gsb != null) {
            this.gsb.reset();
        }
    }

    public void remove(GWidget gwidget, boolean isClearChild) {
        if (gwidget != null) {
            this.children.removeElement(gwidget);
            if (isClearChild && (gwidget instanceof GContainer)) {
                ((GContainer) gwidget).destroy();
            }
            GWindow gwindow = gwidget.getParentWindow();
            if (gwindow != null && gwindow.focusWidget == gwidget) {
                gwindow.focusWidget = null;
            }
        }
    }

    public void destroy() {
        GWindow gwindow = getParentWindow();
        destroyChild();
        if (gwindow != null && gwindow.focusWidget == this) {
            gwindow.focusWidget = null;
        }
    }

    private void destroyChild() {
        int size = this.children.size();
        for (int i = size - 1; i >= 0; i--) {
            GWidget gwidget = (GWidget) this.children.elementAt(i);
            if (gwidget != null) {
                remove(gwidget, true);
            }
        }
    }

    private GWidget getBorderLayoutGWidget(int borderType) {
        int size = this.children.size();
        for (int i = 0; i < size; i++) {
            GWidget gwidget = (GWidget) this.children.elementAt(i);
            if (gwidget != null && gwidget.borderLayoutType == borderType) {
                return gwidget;
            }
        }
        return null;
    }

    private int getPerfectHeight(GWidget gwidget, int width, int inputMaxHeight) {
        if (gwidget == null) {
            return 0;
        }
        int getHeight = gwidget.getMinH();
        if (gwidget.getType() == 52 && gwidget.getH() > getHeight) {
            getHeight = gwidget.getH();
        }
        if (getHeight > inputMaxHeight && inputMaxHeight > 0) {
            return inputMaxHeight;
        }
        return getHeight;
    }

    private int getPerfectWidth(GWidget gwidget, int inputMaxWidth) {
        if (gwidget == null) {
            return 0;
        }
        int getWidth = gwidget.getMinW();
        if (gwidget.getType() == 52 && gwidget.getW() > getWidth) {
            getWidth = gwidget.getW();
        }
        if (getWidth > inputMaxWidth && inputMaxWidth > 0) {
            return inputMaxWidth;
        }
        return getWidth;
    }

    private void initChild(GWidget gwidget) {
        gwidget.parent = this;
    }

    private void layoutG() {
        int rows = this.layoutData[4];
        int cols = this.layoutData[5];
        int hGap = this.layoutData[1];
        int vGap = this.layoutData[2];
        if (rows > 0 && cols > 0) {
            int getWidth = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
            int gridWidth = ((hGap + getWidth) / cols) - hGap;
            int getHeight = (this.vmData[5] - this.vmData[9]) - this.vmData[11];
            int gridHeight = ((vGap + getHeight) / rows) - vGap;
            layoutGrid(this.vmData[8], this.vmData[9], getWidth, getHeight, gridWidth, gridHeight, rows, cols);
        }
    }

    public int getLayoutGColumn() {
        if (this.layoutData[0] == 8) {
            int getWidth = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
            return (this.layoutData[1] + getWidth) / (this.layoutData[4] + this.layoutData[1]);
        }
        return this.layoutData[5];
    }

    private void layoutG2() {
        int gridWidth = this.layoutData[4];
        int gridHeight = this.layoutData[5];
        int hGap = this.layoutData[1];
        int vGap = this.layoutData[2];
        int getWidth = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
        int cols = (hGap + getWidth) / (gridWidth + hGap);
        int getHeight = (this.vmData[5] - this.vmData[9]) - this.vmData[11];
        int rows = (vGap + getHeight) / (gridHeight + vGap);
        layoutGrid(this.vmData[8], this.vmData[9], getWidth, getHeight, gridWidth, gridHeight, rows, cols);
    }

    private void layoutGrid(int x, int y, int width, int height, int gridWidth, int gridHeight, int layoutRows, int layoutCols) {
        int gridTotalWidth = (this.layoutData[1] + gridWidth) * layoutCols;
        int x2 = x + ((width - gridTotalWidth) / 2);
        int gridTotalHeight = (this.layoutData[2] + gridHeight) * layoutRows;
        int y2 = y + ((height - gridTotalHeight) / 2);
        int gridTotalNum = this.children.size();
        int realRow = gridTotalNum / layoutCols;
        if (gridTotalNum % layoutCols > 0) {
            realRow++;
        }
        for (int rowIndex = 0; rowIndex < realRow; rowIndex++) {
            for (int j5 = 0; j5 < layoutCols; j5++) {
                int childIndex = (rowIndex * layoutCols) + j5;
                if (childIndex <= gridTotalNum - 1) {
                    int k7 = ((this.layoutData[1] + gridWidth) * j5) + x2 + (this.layoutData[1] / 2);
                    int j8 = ((this.layoutData[2] + gridHeight) * rowIndex) + y2 + (this.layoutData[2] / 2);
                    GWidget gwidget = (GWidget) this.children.elementAt(childIndex);
                    if (gwidget.isScale()) {
                        gwidget.setBounds(k7, j8, gridWidth, gridHeight);
                    } else {
                        int gridX = ((gridWidth - gwidget.vmData[4]) / 2) + k7;
                        int gridY = ((gridHeight - gwidget.vmData[5]) / 2) + j8;
                        gwidget.setBounds(gridX, gridY, gwidget.vmData[4], gwidget.vmData[5]);
                    }
                }
            }
        }
        int childNum = this.children.size();
        int canShowGirdNum = layoutCols * layoutRows;
        if (canShowGirdNum < childNum) {
            this.needScrollBar = true;
            this.outHeight = (realRow - layoutRows) * (this.layoutData[2] + gridHeight);
            if (this.gsb != null) {
                this.gsb.maxScrollDis = this.outHeight;
                this.gsb.showDis = (this.layoutData[2] + gridHeight) * layoutRows;
            }
            this.firstInViewIndex = 0;
            this.lastInViewIndex = canShowGirdNum - 1;
            for (int index = canShowGirdNum; index < childNum; index++) {
                GWidget gwidget2 = (GWidget) this.children.elementAt(index);
                gwidget2.setOutView(true);
            }
            return;
        }
        this.needScrollBar = false;
        if (this.gsb != null) {
            this.gsb.maxScrollDis = 0;
        }
        this.firstInViewIndex = 0;
        this.lastInViewIndex = childNum - 1;
        for (int index2 = 0; index2 < childNum; index2++) {
            GWidget gwidget3 = (GWidget) this.children.elementAt(index2);
            gwidget3.setOutView(false);
        }
    }

    private void layoutH() {
        int size = this.children.size();
        int xOffset = this.vmData[8];
        int maxHeight = 0;
        for (int index = 0; index < size; index++) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            if (!gwidget.getNoNeedLayout()) {
                if (gwidget instanceof GContainer) {
                    ((GContainer) gwidget).layout2();
                }
                int width = getPerfectWidth(gwidget, 0);
                int height = getPerfectHeight(gwidget, width, 0);
                gwidget.setBounds(xOffset, this.vmData[9], width, height);
                xOffset += this.layoutData[1] + width;
                if (height > maxHeight) {
                    maxHeight = height;
                }
            }
        }
        if (isScale()) {
            int width2 = (this.vmData[10] + xOffset) - this.layoutData[1];
            int height2 = this.vmData[9] + maxHeight + this.vmData[11];
            if (width2 < getMinW()) {
                width2 = getMinW();
            } else if (width2 > getMaxW()) {
                width2 = getMaxW();
            }
            if (height2 < getMinH()) {
                height2 = getMinH();
            } else if (height2 > getMaxH()) {
                height2 = getMaxH();
            }
            setSize(width2, height2);
            setMinSize(width2, height2);
        }
    }

    private void layoutV() {
        int size = this.children.size();
        int heightOffset = this.vmData[9];
        int maxChildWidth = 0;
        int displayHeight = 0;
        int vDis = this.layoutData[2];
        this.firstInViewIndex = MAX_VIEW_INDEX;
        this.lastInViewIndex = MAX_VIEW_INDEX;
        boolean isObjectOutView = false;
        int index = 0;
        while (index < size) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            gwidget.setOutView(false);
            if (gwidget.getNoNeedLayout()) {
                index++;
            } else {
                if (gwidget instanceof GContainer) {
                    ((GContainer) gwidget).layout2();
                }
                int childWidth = getPerfectWidth(gwidget, 0);
                int childHeight = getPerfectHeight(gwidget, childWidth, 0);
                gwidget.setBounds(this.vmData[8], heightOffset, childWidth, childHeight);
                if (displayHeight == 0) {
                    if (this.isIntersectView) {
                        if (heightOffset > getMaxH() - this.vmData[11]) {
                            isObjectOutView = true;
                        }
                    } else if (heightOffset + childHeight > getMaxH() - this.vmData[11]) {
                        isObjectOutView = true;
                    }
                }
                if (isObjectOutView) {
                    gwidget.setOutView(true);
                }
                if (isObjectOutView && displayHeight == 0) {
                    if (this.firstInViewIndex == MAX_VIEW_INDEX) {
                        this.firstInViewIndex = 0;
                    }
                    if (this.lastInViewIndex == MAX_VIEW_INDEX) {
                        this.lastInViewIndex = index - 1;
                    }
                    displayHeight = heightOffset;
                    if (getMinH() == getMaxH() && heightOffset < getMinH() - this.vmData[11]) {
                        gwidget.setOutView(false);
                        displayHeight = getMinH() - this.vmData[11];
                    }
                }
                heightOffset += vDis + childHeight;
                if (childWidth > maxChildWidth) {
                    maxChildWidth = childWidth;
                }
                index++;
            }
        }
        if (this.firstInViewIndex == MAX_VIEW_INDEX) {
            this.firstInViewIndex = 0;
        }
        if (this.lastInViewIndex == MAX_VIEW_INDEX) {
            this.lastInViewIndex = size - 1;
        }
        this.realHeight = (heightOffset - vDis) + this.vmData[11];
        if (displayHeight > 0) {
            this.needScrollBar = true;
            this.outHeight = heightOffset - displayHeight;
            if (this.gsb != null) {
                this.gsb.maxScrollDis = this.outHeight;
                this.gsb.showDis = displayHeight;
            }
            heightOffset = displayHeight;
        } else {
            this.needScrollBar = false;
        }
        if (isScale()) {
            int heightOffset2 = heightOffset - vDis;
            int layoutWidth = this.vmData[8] + maxChildWidth + this.vmData[10];
            if (layoutWidth < getMinW()) {
                layoutWidth = getMinW();
            } else if (layoutWidth > getMaxW()) {
                layoutWidth = getMaxW();
            }
            if (this.vmData[11] + heightOffset2 > getMaxH()) {
                heightOffset2 = getMaxH() - this.vmData[11];
            } else if (this.vmData[11] + heightOffset2 < getMinH()) {
                heightOffset2 = getMinH() - this.vmData[11];
            }
            synchronized (lock) {
                setSize(layoutWidth, this.vmData[11] + heightOffset2);
            }
            setMinSize(layoutWidth, this.vmData[11] + heightOffset2);
        }
    }

    private void borderLayout() {
        int x = this.vmData[8];
        int y = this.vmData[9];
        int width = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
        int height = (this.vmData[5] - this.vmData[9]) - this.vmData[11];
        GWidget northGwidget = getBorderLayoutGWidget(0);
        GWidget southGwidget = getBorderLayoutGWidget(1);
        GWidget westGwidget = getBorderLayoutGWidget(2);
        GWidget eastGwidget = getBorderLayoutGWidget(3);
        GWidget centerGwidget = getBorderLayoutGWidget(4);
        if (northGwidget != null) {
            northGwidget.vmData[4] = width;
            if ((northGwidget instanceof GContainer) && !northGwidget.getNoNeedLayout()) {
                ((GContainer) northGwidget).layout2();
            }
            int northHeight = getPerfectHeight(northGwidget, width, height);
            northGwidget.setBounds(x, y, width, northHeight);
            y += northGwidget.vmData[5] + this.layoutData[1];
            height = (height - northGwidget.vmData[5]) - this.layoutData[1];
        }
        if (southGwidget != null) {
            southGwidget.vmData[4] = width;
            if ((southGwidget instanceof GContainer) && !southGwidget.getNoNeedLayout()) {
                ((GContainer) southGwidget).layout2();
            }
            int southHeight = getPerfectHeight(southGwidget, width, height);
            int southY = (this.vmData[5] - southHeight) - this.vmData[11];
            southGwidget.setBounds(x, southY, width, southHeight);
            height = (height - southGwidget.vmData[5]) - this.layoutData[2];
        }
        if (westGwidget != null) {
            if ((westGwidget instanceof GContainer) && !westGwidget.getNoNeedLayout()) {
                ((GContainer) westGwidget).layout2();
            }
            int westWidth = getPerfectWidth(westGwidget, width);
            if (height == 0) {
                height = getPerfectHeight(westGwidget, westWidth, height);
            }
            westGwidget.setBounds(x, y, westWidth, height);
            x += westGwidget.vmData[4] + this.layoutData[3];
            width = (width - westGwidget.vmData[4]) - this.layoutData[3];
        }
        if (eastGwidget != null) {
            if ((eastGwidget instanceof GContainer) && !eastGwidget.getNoNeedLayout()) {
                ((GContainer) eastGwidget).layout2();
            }
            int eastWidth = getPerfectWidth(eastGwidget, width);
            if (height == 0) {
                height = getPerfectHeight(eastGwidget, eastWidth, height);
            }
            int eastX = (this.vmData[4] - eastWidth) - this.vmData[10];
            eastGwidget.setBounds(eastX, y, eastWidth, height);
            width = (width - eastGwidget.vmData[4]) - this.layoutData[4];
        }
        if (centerGwidget != null) {
            centerGwidget.setBounds(x, y, width, height);
            if ((centerGwidget instanceof GContainer) && !centerGwidget.getNoNeedLayout()) {
                ((GContainer) centerGwidget).layout2();
            }
            centerGwidget.setBounds(x, y, width, height);
        }
        if (width == 0) {
            int layoutMinWidth = 0;
            if (northGwidget != null) {
                layoutMinWidth = northGwidget.vmData[4];
            }
            if (southGwidget != null && layoutMinWidth < southGwidget.vmData[4]) {
                layoutMinWidth = southGwidget.vmData[4];
            }
            int centerWidth = this.layoutData[3] + this.layoutData[4];
            if (westGwidget != null) {
                centerWidth += westGwidget.vmData[4];
            }
            if (eastGwidget != null) {
                centerWidth += eastGwidget.vmData[4];
            }
            if (centerGwidget != null) {
                centerWidth += centerGwidget.vmData[4];
            }
            if (layoutMinWidth < centerWidth) {
                layoutMinWidth = centerWidth;
            }
            setMinWidth(layoutMinWidth);
        }
        if (height == 0) {
            int layoutMinHeight = 0;
            if (westGwidget != null) {
                layoutMinHeight = westGwidget.vmData[5];
            }
            if (eastGwidget != null && layoutMinHeight < eastGwidget.vmData[5]) {
                layoutMinHeight = eastGwidget.vmData[5];
            }
            if (centerGwidget != null && layoutMinHeight < centerGwidget.vmData[5]) {
                layoutMinHeight = centerGwidget.vmData[5];
            }
            int layoutMinHeight2 = layoutMinHeight + this.layoutData[1] + this.layoutData[2];
            if (northGwidget != null) {
                layoutMinHeight2 += northGwidget.vmData[5];
            }
            if (southGwidget != null) {
                layoutMinHeight2 += southGwidget.vmData[5];
            }
            setMinHeight(layoutMinHeight2);
        }
    }

    private void layout2() {
        switch (this.layoutData[0]) {
            case 0:
                for (int i = 0; i < this.children.size(); i++) {
                    GWidget gwidget = (GWidget) this.children.elementAt(i);
                    if (gwidget != null && !gwidget.getNoNeedLayout() && (gwidget instanceof GContainer)) {
                        ((GContainer) gwidget).layout2();
                    }
                }
                return;
            case 1:
                layoutH();
                return;
            case 2:
                layoutV();
                return;
            case 4:
                layoutG();
                return;
            case GW_LAYOUT_TYPE_GRID2 /* 8 */:
                layoutG2();
                return;
            case GW_LAYOUT_TYPE_BORDER /* 17 */:
                borderLayout();
                return;
            default:
                return;
        }
    }

    public void layout() {
        layout2();
        align();
    }

    public void align() {
        int childNum = this.children.size();
        switch (this.layoutData[3]) {
            case 0:
                for (int index = 0; index < childNum; index++) {
                    GWidget gWidget = (GWidget) this.children.elementAt(index);
                    if (gWidget != null && !gWidget.getNoNeedLayout() && (gWidget instanceof GContainer)) {
                        ((GContainer) gWidget).align();
                    }
                }
                break;
            case GW_LAYOUT_ALIGN_FILL /* 256 */:
                int gridWidth = 0;
                if (this.layoutData[0] == 1) {
                    int getWidth = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
                    int j8 = (childNum - 1) * this.layoutData[1];
                    gridWidth = (getWidth - j8) / childNum;
                }
                for (int index2 = 0; index2 < childNum; index2++) {
                    GWidget gWidget2 = (GWidget) this.children.elementAt(index2);
                    if (gWidget2 != null && !gWidget2.getNoNeedLayout()) {
                        if (this.layoutData[0] == 2) {
                            gWidget2.setBounds(gWidget2.vmData[2], gWidget2.vmData[3], (this.vmData[4] - this.vmData[8]) - this.vmData[10], gWidget2.vmData[5]);
                        } else if (this.layoutData[0] == 1) {
                            int gwidgetX = this.vmData[8] + ((this.layoutData[1] + gridWidth) * index2);
                            int gwidgetWidth = gridWidth;
                            if (!isScale()) {
                                gwidgetWidth = gWidget2.vmData[4];
                                gwidgetX += (gridWidth - gwidgetWidth) / 2;
                            }
                            gWidget2.setBounds(gwidgetX, gWidget2.vmData[3], gwidgetWidth, gWidget2.vmData[5]);
                        }
                        if (gWidget2 instanceof GContainer) {
                            ((GContainer) gWidget2).align();
                        }
                    }
                }
                break;
            case GW_LAYOUT_ALIGN_HCENTER /* 512 */:
                for (int index3 = 0; index3 < childNum; index3++) {
                    GWidget gWidget3 = (GWidget) this.children.elementAt(index3);
                    if (gWidget3 != null && !gWidget3.getNoNeedLayout()) {
                        int getWidth2 = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
                        int posX = gWidget3.vmData[2] + ((getWidth2 - gWidget3.vmData[4]) / 2);
                        gWidget3.setPos(posX, gWidget3.vmData[3]);
                        if (gWidget3 instanceof GContainer) {
                            ((GContainer) gWidget3).align();
                        }
                    }
                }
                break;
            case GW_LAYOUT_ALIGN_VCENTER /* 1024 */:
                for (int index4 = 0; index4 < childNum; index4++) {
                    GWidget gWidget4 = (GWidget) this.children.elementAt(index4);
                    if (gWidget4 != null && !gWidget4.getNoNeedLayout()) {
                        int getHeight = (this.vmData[5] - this.vmData[9]) - this.vmData[11];
                        int posY = gWidget4.vmData[3] + ((getHeight - gWidget4.vmData[5]) / 2);
                        gWidget4.setPos(gWidget4.vmData[2], posY);
                        if (gWidget4 instanceof GContainer) {
                            ((GContainer) gWidget4).align();
                        }
                    }
                }
                break;
        }
        refreshScrollBar();
    }

    public void move(int x, int y) {
        super.move(x, y);
        setAbs();
    }

    public void moveDown() {
        if (this.firstInViewIndex > -1 && this.firstInViewIndex > 0) {
            int nextIndex = this.firstInViewIndex - 1;
            GWidget preGwidget = (GWidget) this.children.elementAt(nextIndex);
            GWidget curGwidget = (GWidget) this.children.elementAt(this.firstInViewIndex);
            int moveY = curGwidget.vmData[3] - preGwidget.vmData[3];
            if (nextIndex == 0) {
                moveY += curGwidget.getH();
            }
            setChildrenOffset(0, moveY);
        }
    }

    public void moveDownPage() {
    }

    public void moveUp() {
        int nextIndex;
        if (this.lastInViewIndex > -1 && (nextIndex = this.lastInViewIndex + 1) < this.children.size()) {
            GWidget curGwidget = (GWidget) this.children.elementAt(this.lastInViewIndex);
            GWidget nextGwidget = (GWidget) this.children.elementAt(nextIndex);
            int moveY = curGwidget.vmData[3] - nextGwidget.vmData[3];
            if (nextIndex == this.children.size() - 1) {
                moveY -= nextGwidget.getH();
            }
            setChildrenOffset(0, moveY);
        }
    }

    public void moveUpPage() {
    }

    public void pointerDrag(int moveX, int moveY) {
        if (this.needScrollBar && this.gsb != null) {
            setChildrenOffset(moveX, moveY);
        }
    }

    public void hotKeyPress(int keyPress) {
    }

    public void keyPressUp() {
    }

    public void keyPressDown() {
    }

    public void keyPressLeft() {
    }

    public void keyPressRight() {
    }

    public void cycleContainer() {
        if (this instanceof IGCycle) {
            ((IGCycle) this).cycle();
        }
        cycleChildren();
    }

    private void cycleChildren() {
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            IGCycle iGCycle = (GWidget) this.children.elementAt(index);
            if (!iGCycle.isOutView() && iGCycle.isShow()) {
                if (iGCycle instanceof IGCycle) {
                    iGCycle.cycle();
                }
                if (iGCycle instanceof GContainer) {
                    ((GContainer) iGCycle).cycleChildren();
                }
            }
        }
    }

    private void paintTopDrawVector() {
        if (this.topDrawVector != null) {
            for (int i = 0; i < this.topDrawVector.size(); i++) {
                IGTopDraw topDraw = (IGTopDraw) this.topDrawVector.elementAt(i);
                if (topDraw != null) {
                    topDraw.draw();
                }
            }
        }
    }

    public void paintContainer() {
        if (this instanceof IGPaint) {
            ((IGPaint) this).paint();
        }
        paintChildren();
        paintTopDrawVector();
    }

    private void paintChildren() {
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            IGPaint iGPaint = (GWidget) this.children.elementAt(index);
            if (!iGPaint.isOutView() && iGPaint.isShow()) {
                if (iGPaint instanceof IGPaint) {
                    iGPaint.paint();
                }
                if (iGPaint instanceof GContainer) {
                    GContainer container = (GContainer) iGPaint;
                    container.paintChildren();
                    container.paintTopDrawVector();
                }
            }
        }
        if (this.gsb != null && this.needScrollBar && (this.gsb instanceof IGPaint)) {
            this.gsb.paint();
        }
    }

    public int getIndex(GWidget gwidget) {
        for (int index = 0; index < this.children.size(); index++) {
            GWidget getWidget = (GWidget) this.children.elementAt(index);
            if (getWidget != null && getWidget == gwidget) {
                return index;
            }
        }
        return -1;
    }

    public GWidget getJavaChild(int index) {
        if (index < 0 || index >= this.children.size()) {
            return null;
        }
        return (GWidget) this.children.elementAt(index);
    }

    public GWidget getJavaChildByEvent(int eventType) {
        if (this.children != null || this.children.size() > 0) {
            for (int i = 0; i < this.children.size(); i++) {
                GWidget gWidget = (GWidget) this.children.elementAt(i);
                if (gWidget != null && gWidget.getEventType() == eventType) {
                    return gWidget;
                }
            }
            return null;
        }
        return null;
    }

    public Object[] getJavaChildren() {
        Object[] aobj = new Object[this.children.size()];
        this.children.copyInto(aobj);
        return aobj;
    }

    public int getChildNum() {
        if (this.children == null) {
            return 0;
        }
        return this.children.size();
    }

    public GScrollBar getScrollBar() {
        return this.gsb;
    }

    public void grid3Layout() {
        int x = this.vmData[8];
        int y = this.vmData[9];
        int width = (this.vmData[4] - this.vmData[8]) - this.vmData[10];
        int height = (this.vmData[5] - this.vmData[9]) - this.vmData[11];
        int gridWidth = width / this.layoutData[5];
        int gridHeight = height / this.layoutData[4];
        int gridTotalWidth = gridWidth * this.layoutData[5];
        int leaveWidth = (width % gridWidth) + 1;
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            if (gwidget.grid3Data != null) {
                int gwidgetX = (gwidget.grid3Data[0] * gridWidth) + x + gwidget.grid3Data[LAYOUT_DATA_SIZE];
                int gwidgetY = (gwidget.grid3Data[1] * gridHeight) + y + gwidget.grid3Data[4];
                int gwidgetWidth = ((gwidget.grid3Data[2] * gridWidth) - gwidget.grid3Data[LAYOUT_DATA_SIZE]) - gwidget.grid3Data[7];
                int gwidgetHeight = ((gwidget.grid3Data[3] * gridHeight) - gwidget.grid3Data[4]) - gwidget.grid3Data[5];
                if ((gwidget.grid3Data[0] + gwidget.grid3Data[2]) * gridWidth == gridTotalWidth) {
                    gwidgetWidth += leaveWidth;
                }
                if (gwidget.isScale()) {
                    gwidget.setBounds(gwidgetX, gwidgetY, gwidgetWidth, gwidgetHeight);
                } else {
                    int offsetX = ((gwidgetWidth - gwidget.vmData[4]) / 2) + gwidgetX;
                    int offsetY = ((gwidgetHeight - gwidget.vmData[5]) / 2) + gwidgetY;
                    gwidget.setBounds(offsetX, offsetY, gwidget.vmData[4], gwidget.vmData[5]);
                }
            }
        }
    }

    public void insert(GWidget gwidget, int index) {
        if (gwidget != null) {
            this.children.insertElementAt(gwidget, index);
            initChild(gwidget);
        }
    }

    public void add(GWidget gwidget) {
        if (gwidget != null) {
            this.children.addElement(gwidget);
            initChild(gwidget);
        }
    }

    public void add(GWidget gwidget, int borderType) {
        if (gwidget != null) {
            add(gwidget);
            gwidget.borderLayoutType = borderType;
        }
    }

    public void addScrollBar(GScrollBar gscrollbar) {
        this.gsb = gscrollbar;
        if (gscrollbar != null) {
            gscrollbar.parent = this;
        }
    }

    public GWidget batchAdd(GWidget gwidget, int index) {
        GWidget cloneGwidget = gwidget.getClone();
        add(cloneGwidget);
        return cloneGwidget;
    }

    public void batchAdd(UIHandler uiHandler, GWidget gwidget, int addNum, int[] posArray, String[] texts, int[] eventTypes) {
        if (gwidget != null && posArray != null && texts != null && eventTypes != null) {
            for (int i = 0; i < addNum; i++) {
                GLabel clone = gwidget.getClone();
                if (clone instanceof GLabel) {
                    GLabel label = clone;
                    label.setText("");
                    if (i < texts.length) {
                        label.setText(texts[i]);
                    }
                } else if (clone instanceof GTextArea) {
                    GTextArea text = (GTextArea) clone;
                    text.setText("");
                    if (i < texts.length) {
                        text.setText(texts[i]);
                    }
                }
                if ((i * 2) + 1 < posArray.length) {
                    clone.setPos(posArray[i * 2], posArray[(i * 2) + 1]);
                }
                if (i < eventTypes.length) {
                    clone.setEventType(eventTypes[i]);
                }
                add(clone);
                if (uiHandler != null) {
                    uiHandler.addEventGWidget(clone);
                }
            }
        }
    }

    public boolean isPointAtScrollBar(int pressType, int pointX, int pointY) {
        if (this.needScrollBar && this.gsb != null && this.gsb.isGWidgetSetting(pressType)) {
            return Tool.rectIn(this.gsb.vmData[LAYOUT_DATA_SIZE] + this.gsb.vmData[17], this.gsb.vmData[7], this.gsb.vmData[4], this.gsb.vmData[5], pointX, pointY);
        }
        return false;
    }

    public GWidget searchDragGWidget(int pointx, int pointY) {
        if (!isShow() || isOutView()) {
            return null;
        }
        if (isPointAtScrollBar(64, pointx, pointY)) {
            return this.gsb;
        }
        if (!isGWidgetSetting(64) || !Tool.rectIn(this.vmData[LAYOUT_DATA_SIZE], this.vmData[7], this.vmData[4], this.vmData[5], pointx, pointY)) {
            int childNum = this.children.size();
            for (int index = 0; index < childNum; index++) {
                GWidget gwidget = (GWidget) this.children.elementAt(index);
                if (gwidget != null) {
                    if (gwidget instanceof GContainer) {
                        GContainer gcontainer = (GContainer) gwidget;
                        GWidget touchGwidget = gcontainer.searchDragGWidget(pointx, pointY);
                        if (touchGwidget != null) {
                            return touchGwidget;
                        }
                    } else if (gwidget.isGWidgetSetting(64) && gwidget.isShow() && !gwidget.isOutView() && Tool.rectIn(gwidget.vmData[LAYOUT_DATA_SIZE], gwidget.vmData[7], gwidget.vmData[4], gwidget.vmData[5], pointx, pointY)) {
                        return gwidget;
                    }
                }
            }
            return null;
        }
        return this;
    }

    public GWidget searchRepeatedGWidget(int pointX, int pointY) {
        return searchPressGWidget(pointX, pointY, 4096);
    }

    public GWidget searchPressGWidget(int pointx, int pointY) {
        return searchPressGWidget(pointx, pointY, 32);
    }

    private GWidget searchPressGWidget(int pointx, int pointY, int findType) {
        if (!isShow() || isOutView()) {
            return null;
        }
        if (isPointAtScrollBar(findType, pointx, pointY)) {
            return this.gsb;
        }
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            if (gwidget != null) {
                if (gwidget instanceof GContainer) {
                    GContainer gcontainer = (GContainer) gwidget;
                    GWidget touchGwidget = gcontainer.searchPressGWidget(pointx, pointY, findType);
                    if (touchGwidget != null) {
                        return touchGwidget;
                    }
                } else if (gwidget.isEnableFocus() && gwidget.isGWidgetSetting(findType) && gwidget.isShow() && !gwidget.isOutView() && Tool.rectIn(gwidget.vmData[LAYOUT_DATA_SIZE], gwidget.vmData[7], gwidget.vmData[4], gwidget.vmData[5], pointx, pointY)) {
                    return gwidget;
                }
            }
        }
        if (isEnableFocus() && isGWidgetSetting(findType) && Tool.rectIn(this.vmData[LAYOUT_DATA_SIZE], this.vmData[7], this.vmData[4], this.vmData[5], pointx, pointY)) {
            return this;
        }
        return null;
    }

    public void setChildrenOffset(int moveX, int moveY) {
        this.firstInViewIndex = -1;
        this.lastInViewIndex = -1;
        if (this.gsb != null) {
            if (this.gsb.scrollPos - moveY <= this.gsb.maxScrollDis) {
                int oldScrollPos = this.gsb.scrollPos;
                this.gsb.scrollPos -= moveY;
                if (this.gsb.scrollPos < 0) {
                    this.gsb.scrollPos = 0;
                    moveY = oldScrollPos;
                }
            } else {
                moveY = this.gsb.scrollPos - this.gsb.maxScrollDis;
                this.gsb.scrollPos = this.gsb.maxScrollDis;
            }
        }
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            if (gwidget != null) {
                gwidget.setPos(gwidget.vmData[2] + moveX, gwidget.vmData[3] + moveY);
                boolean intersected = Tool.rectIntersect(this.vmData[8], this.vmData[9], (this.vmData[4] - this.vmData[8]) - this.vmData[10], (this.vmData[5] - this.vmData[9]) - this.vmData[11], gwidget.vmData[2], gwidget.vmData[3], gwidget.vmData[4], gwidget.vmData[5]);
                if (intersected) {
                    gwidget.setOutView(false);
                    if (this.firstInViewIndex == -1) {
                        this.firstInViewIndex = index;
                    }
                    if (index == childNum - 1 && this.lastInViewIndex == -1) {
                        this.lastInViewIndex = index;
                    }
                } else {
                    gwidget.setOutView(true);
                    if (this.lastInViewIndex == -1 && this.firstInViewIndex != -1) {
                        this.lastInViewIndex = index - 1;
                    }
                }
            }
        }
        setAbs();
    }

    public void show() {
        setAbs();
        layout();
    }

    public void setAbs() {
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            if (gwidget != null) {
                gwidget.vmData[LAYOUT_DATA_SIZE] = gwidget.getAbsX();
                gwidget.vmData[7] = gwidget.getAbsY();
                if (gwidget instanceof GContainer) {
                    GContainer gcontainer = (GContainer) gwidget;
                    gcontainer.setAbs();
                    if (gcontainer.gsb != null) {
                        gcontainer.gsb.vmData[LAYOUT_DATA_SIZE] = gcontainer.gsb.getAbsX();
                        gcontainer.gsb.vmData[7] = gcontainer.gsb.getAbsY();
                    }
                }
            }
        }
    }

    public void setBorderLayout(int up, int down, int left, int right) {
        this.layoutData[0] = 17;
        this.layoutData[1] = up;
        this.layoutData[2] = down;
        this.layoutData[3] = left;
        this.layoutData[4] = right;
    }

    public void setGrid2Layout(int hGap, int vGap, int gridWidth, int gridHeight) {
        this.layoutData[0] = 8;
        this.layoutData[1] = hGap;
        this.layoutData[2] = vGap;
        this.layoutData[4] = gridWidth;
        this.layoutData[5] = gridHeight;
        this.layoutData[3] = 256;
    }

    public void setGrid3Layout(int rows, int cols) {
        this.layoutData[0] = 16;
        this.layoutData[4] = rows;
        this.layoutData[5] = cols;
    }

    public void setGridLayout(int rows, int cols) {
        this.layoutData[0] = 4;
        this.layoutData[4] = rows;
        this.layoutData[5] = cols;
    }

    public void setLayoutMode(int mode, int param1, int param2, int param3, int param4, int param5) {
        this.layoutData[0] = mode;
        this.layoutData[1] = param1;
        this.layoutData[2] = param2;
        this.layoutData[3] = param3;
        this.layoutData[4] = param4;
        this.layoutData[5] = param5;
    }

    public void setIntersectView(boolean flag) {
        this.isIntersectView = flag;
    }

    public void setPos(int x, int y) {
        super.setPos(x, y);
        setAbs();
        if (this.gsb != null) {
            int gsbX = 0;
            switch (this.gsb.align) {
                case 1:
                    gsbX = (this.vmData[4] - this.gsb.getMinW()) / 2;
                    break;
                case 2:
                    gsbX = this.vmData[4] - this.gsb.getMinW();
                    break;
            }
            this.gsb.setPos(gsbX, 0);
        }
    }

    public void setScrollBar(GWidget gwidget) {
        if (this.gsb != null && this.gsb.maxScrollDis > 0) {
            this.gsb.scrollPos = 0;
            if (this.children.size() > 0) {
                GWidget firstGwidget = (GWidget) this.children.elementAt(0);
                setSrollBar(firstGwidget, gwidget);
            }
        }
    }

    public void setSrollBar(GWidget fromGwidget, GWidget toGwidget) {
        if (fromGwidget != toGwidget && toGwidget != null) {
            try {
                int top = this.vmData[9];
                int bottom = this.vmData[5] - this.vmData[11];
                boolean intersectViewScroll = false;
                if (toGwidget.vmData[3] < top && toGwidget.vmData[3] + toGwidget.vmData[5] > top) {
                    intersectViewScroll = true;
                }
                if (!intersectViewScroll && toGwidget.vmData[3] < bottom && toGwidget.vmData[3] + toGwidget.vmData[5] > bottom) {
                    intersectViewScroll = true;
                }
                if (toGwidget.isOutView() || intersectViewScroll) {
                    int moveY = 0;
                    GWidget firsetGwidget = (GWidget) this.children.elementAt(this.firstInViewIndex);
                    GWidget lastGwidget = (GWidget) this.children.elementAt(this.lastInViewIndex);
                    if (this.children.elementAt(0) != toGwidget) {
                        if (toGwidget == this.children.elementAt(this.children.size() - 1)) {
                            int bottomDisPlayerY = lastGwidget.vmData[3] + lastGwidget.vmData[5];
                            moveY = Math.min(bottomDisPlayerY, bottom) - (toGwidget.vmData[3] + toGwidget.vmData[5]);
                        } else if (toGwidget.vmData[3] < fromGwidget.vmData[3]) {
                            if (fromGwidget.isOutView()) {
                                if (toGwidget.vmData[3] < fromGwidget.vmData[3]) {
                                    moveY = (firsetGwidget.vmData[3] + firsetGwidget.vmData[5]) - toGwidget.vmData[3];
                                }
                            } else {
                                moveY = intersectViewScroll ? top - toGwidget.vmData[3] : Math.max(firsetGwidget.vmData[3], top) - toGwidget.vmData[3];
                            }
                        } else if (fromGwidget.isOutView()) {
                            if (toGwidget.vmData[3] > fromGwidget.vmData[3]) {
                                moveY = (-fromGwidget.vmData[3]) + firsetGwidget.vmData[3];
                            }
                        } else if (intersectViewScroll) {
                            moveY = bottom - (toGwidget.vmData[3] + toGwidget.vmData[5]);
                        } else {
                            int bottomDisPlayerY2 = lastGwidget.vmData[3] + lastGwidget.vmData[5];
                            moveY = Math.min(bottomDisPlayerY2, bottom) - (toGwidget.vmData[3] + toGwidget.vmData[5]);
                        }
                    } else if (this.gsb != null) {
                        moveY = this.gsb.scrollPos;
                    }
                    setChildrenOffset(0, moveY);
                }
            } catch (Exception e) {
            }
        }
    }

    public void setHLayout(int hGap, int align) {
        this.layoutData[0] = 1;
        this.layoutData[1] = hGap;
        this.layoutData[3] = align;
    }

    public void setVLayout(int vGap, int align) {
        this.layoutData[0] = 2;
        this.layoutData[2] = vGap;
        this.layoutData[3] = align;
    }

    public void setBounds(int x, int y, int width, int height) {
        super.setBounds(x, y, width, height);
        setAbs();
        refreshScrollBar();
    }

    public void refreshScrollBar() {
        if (this.gsb != null) {
            int gsbX = 0;
            switch (this.gsb.align) {
                case 1:
                    gsbX = (this.vmData[4] - this.gsb.getMinW()) / 2;
                    break;
                case 2:
                    gsbX = this.vmData[4] - this.gsb.getMinW();
                    break;
            }
            this.gsb.setBounds(gsbX, 0, this.gsb.getMinW(), this.vmData[5]);
        }
    }

    public void toBottom(int index) {
        GWidget gwidget = (GWidget) this.children.elementAt(index);
        this.children.removeElementAt(index);
        insert(gwidget, 0);
    }

    public void toTop(int index) {
        GWidget gwidget = (GWidget) this.children.elementAt(index);
        this.children.removeElementAt(index);
        add(gwidget);
    }

    public void setCatchKey(boolean flag) {
        this.canCatchKey = flag;
    }

    public boolean canCatchKey() {
        return this.canCatchKey;
    }

    public void setCatchHotKey(boolean flag) {
        this.isCatchHotKey = flag;
    }

    public GContainer getCatchKeyContainer(boolean isHotKeyCheck, int pressType) {
        if (this instanceof GContainer) {
            if (isHotKeyCheck) {
                if (this.isCatchHotKey) {
                    return this;
                }
            } else if (canCatchKey() && isGWidgetSetting(pressType)) {
                return this;
            }
        }
        int childNum = this.children.size();
        for (int index = 0; index < childNum; index++) {
            GWidget gwidget = (GWidget) this.children.elementAt(index);
            if (gwidget != null && gwidget.isShow() && (gwidget instanceof GContainer)) {
                GContainer gContainer = (GContainer) gwidget;
                if (isHotKeyCheck) {
                    if (gContainer.isCatchHotKey) {
                        return gContainer;
                    }
                } else if (gContainer.canCatchKey() && gContainer.isGWidgetSetting(pressType)) {
                    return gContainer;
                }
                GContainer gContainer2 = gContainer.getCatchKeyContainer(isHotKeyCheck, pressType);
                if (gContainer2 != null) {
                    return gContainer2;
                }
            }
        }
        return null;
    }

    public GWidget getClone() {
        int[] ai = getVMDataCopy();
        GContainer gwidget = new GContainer(ai);
        super.setCloneData(gwidget);
        setGContainerData(gwidget);
        return gwidget;
    }

    protected void setGContainerData(GContainer gwidget) {
        gwidget.firstInViewIndex = this.firstInViewIndex;
        gwidget.lastInViewIndex = this.lastInViewIndex;
        if (this.gsb != null) {
            gwidget.gsb = this.gsb.getClone();
        }
        gwidget.isIntersectView = this.isIntersectView;
        gwidget.layoutData = Tool.getCopyData(this.layoutData);
        gwidget.needScrollBar = this.needScrollBar;
        gwidget.canCatchKey = this.canCatchKey;
        int childNum = this.children.size();
        for (int i = 0; i < childNum; i++) {
            GWidget gw = ((GWidget) this.children.elementAt(i)).getClone();
            gwidget.add(gw);
        }
    }
}