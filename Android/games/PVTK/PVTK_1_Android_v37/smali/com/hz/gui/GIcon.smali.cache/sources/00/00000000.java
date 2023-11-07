package com.hz.gui;

import com.hz.common.Utilities;
import com.hz.image.ImageSet;
import com.hz.main.GameCanvas;
import com.hz.main.GameView;
import javax.microedition.lcdui.Graphics;
import javax.microedition.lcdui.Image;

/* loaded from: C:\Users\phung\AppData\Local\Temp\jadx-8734414142008941475.dex */
public class GIcon extends GPixelLabel {
    private static final int[] COLOR_ITEM_SET = {7660543, 16759296, 8257324, 12803839, 16731469, 16772656, 2980768};
    int anchor;
    int backColorIndex;
    public int gennum;
    boolean hasMask;
    int iconIndex;
    ImageSet iconRes;
    public boolean isClear;
    int maskRgb;
    int number;
    int numberBottomDis;
    int numberIndex;
    ImageSet numberRes;
    int numberRightDis;
    int numberSpace;
    private int setIndex;
    public int starnum;
    int trans;

    public void setItemSetColorIndex(int colorIndex) {
        this.setIndex = colorIndex;
    }

    public void drawSet(Graphics g, int x, int y, int w, int h) {
        if (this.setIndex >= 0 && this.setIndex < COLOR_ITEM_SET.length) {
            g.setColor(COLOR_ITEM_SET[this.setIndex]);
            g.drawRect(x + 3, y + 3, w - 7, h - 7);
        }
    }

    public GIcon(int[] _data) {
        super(_data);
        this.backColorIndex = -1;
        this.starnum = 0;
        this.gennum = 0;
        this.isClear = false;
        this.setIndex = -1;
        setType(1);
        this.anchor = 3;
        this.trans = 0;
    }

    public void setIconData(ImageSet imageset, int iconIndex, int translate, int _anchor) {
        if (imageset != null) {
            this.iconRes = imageset;
            setIconIndex(iconIndex, -1);
            this.trans = translate;
            this.anchor = _anchor;
        }
    }

    public void setIconStarNum(int num, int index) {
        switch (index) {
            case 0:
                this.gennum = num;
                return;
            case 1:
                this.starnum = num;
                return;
            default:
                return;
        }
    }

    public void clearsetIconStarNum() {
        this.gennum = 0;
        this.starnum = 0;
    }

    public void setIconIndex(int iconIndex) {
        setIconIndex(iconIndex, -1);
    }

    public void setIconIndex(int index, int _backColorIndex) {
        this.iconIndex = index;
        if (this.iconIndex >= 0) {
            int minWidth = this.iconRes.getFrameWidth(this.iconIndex);
            int minHeight = this.iconRes.getFrameHeight(this.iconIndex);
            if (minWidth > getMinW()) {
                setMinWidth(minWidth);
            }
            if (minHeight > getMinH()) {
                setMinHeight(minHeight);
            }
            if (getW() == 0) {
                setSize(getMinW(), getMinH());
            }
        }
        this.backColorIndex = _backColorIndex;
    }

    public void setMask(boolean flag, int argb) {
        this.hasMask = flag;
        this.maskRgb = argb;
    }

    public void setMask(boolean flag) {
        this.hasMask = flag;
        if (this.maskRgb == 0) {
            this.maskRgb = -1895825408;
        }
    }

    public void setNumber(int value) {
        this.number = value;
    }

    public void setNumberData(ImageSet imageset, int index, int space, int x, int y) {
        this.numberRes = imageset;
        this.numberIndex = index;
        this.numberSpace = space;
        this.numberRightDis = x;
        this.numberBottomDis = y;
    }

    public void paint() {
        if (!isSetting(256) || GameCanvas.isMotion != 1) {
            Graphics g = GameCanvas.g;
            super.paint();
            if (this.isClear) {
                if (parentNeedScroll()) {
                    int[] rect = getIntersect();
                    g.setClip(rect[0], rect[1], rect[2], rect[3]);
                } else {
                    int[] iArr = {0, 0, GameCanvas.SCREEN_WIDTH, GameCanvas.SCREEN_HEIGHT};
                    g.setClip(this.vmData[6], this.vmData[7], this.vmData[4], this.vmData[5]);
                }
            }
            if (this.iconRes != null && this.iconIndex >= 0) {
                int x = this.vmData[17] + this.vmData[6];
                int centerX = x + (this.vmData[4] / 2);
                int y = this.vmData[18] + this.vmData[7];
                if ((this.anchor & 2) != 0) {
                    y += this.vmData[5] / 2;
                }
                int iconAnchor = this.anchor;
                if (this.backColorIndex >= 0) {
                    Image backIcon = GameView.getBackIcon(this.backColorIndex);
                    Utilities.drawGameImage(g, backIcon, centerX, y, this.anchor);
                    if ((this.anchor & 16) != 0 && backIcon != null) {
                        y += backIcon.getHeight() / 2;
                        iconAnchor = (iconAnchor & (-17)) | 2;
                    }
                }
                this.iconRes.drawFrame(g, this.iconIndex, centerX, y, this.trans, iconAnchor);
                drawSet(g, x, this.vmData[18] + this.vmData[7], this.vmData[4], this.vmData[5]);
            }
            if (this.numberRes != null && this.numberIndex >= 0 && this.number > 0) {
                String numString = String.valueOf(this.number);
                int x2 = this.vmData[17] + this.vmData[6];
                int rightX = (this.vmData[4] + x2) - this.numberRightDis;
                int y2 = this.vmData[18] + this.vmData[7];
                int bottomY = (this.vmData[5] + y2) - this.numberBottomDis;
                GameView.drawImageNumber(g, this.numberRes, this.numberIndex, numString, rightX, bottomY, this.numberSpace, 40);
            }
            if (this.starnum > 0 || this.gennum > 0) {
                int x3 = this.vmData[17] + this.vmData[6];
                int xx = (this.vmData[4] + x3) - 11;
                int y3 = this.vmData[18] + this.vmData[7];
                int yy = (this.vmData[5] + y3) - 10;
                int startoffsetx = 0;
                if (this.starnum > 0) {
                    GameView.starSet.drawFrame(g, 1, xx, yy, 0, 3);
                    GameView.drawImageNumber(g, GameView.smallNumSet, this.numberIndex, new StringBuilder(String.valueOf(this.starnum)).toString(), xx + 8, yy + 7, 0, 40);
                    startoffsetx = 16;
                }
                if (this.gennum > 0) {
                    int xx2 = xx - startoffsetx;
                    GameView.starSet.drawFrame(g, 0, xx2, yy, 0, 3);
                    GameView.drawImageNumber(g, GameView.smallNumSet, this.numberIndex, new StringBuilder(String.valueOf(this.gennum)).toString(), xx2 + 8, yy + 7, 0, 40);
                }
            }
            if (this.hasMask) {
                int x4 = this.vmData[17] + this.vmData[6];
                int y4 = this.vmData[18] + this.vmData[7];
                int width = this.vmData[4];
                int height = this.vmData[5];
                GameView.fillAlphaRect(g, this.maskRgb, x4, y4, width, height);
            }
            g.setClip(0, 0, GameCanvas.SCREEN_WIDTH, GameCanvas.SCREEN_HEIGHT);
        }
    }

    public GWidget getClone() {
        int[] ai = getVMDataCopy();
        GIcon gwidget = new GIcon(ai);
        super.setCloneData(gwidget);
        super.getLabelData(gwidget);
        super.getPixelLabelData(gwidget);
        getIconData(gwidget);
        return gwidget;
    }

    public ImageSet geticonRes() {
        return this.iconRes;
    }

    public int geticonIndex() {
        return this.iconIndex;
    }

    public int gettrans() {
        return this.trans;
    }

    public int getanchor() {
        return this.anchor;
    }

    public ImageSet getnumberRes() {
        return this.numberRes;
    }

    public int getnumberIndex() {
        return this.numberIndex;
    }

    public int getnumberSpace() {
        return this.numberSpace;
    }

    public int getnumberRightDis() {
        return this.numberRightDis;
    }

    public int getnumberBottomDis() {
        return this.numberBottomDis;
    }

    protected void getIconData(GIcon gwidget) {
        gwidget.hasMask = this.hasMask;
        gwidget.maskRgb = this.maskRgb;
        gwidget.iconIndex = this.iconIndex;
        gwidget.backColorIndex = this.backColorIndex;
        gwidget.iconRes = this.iconRes;
        gwidget.number = this.number;
        gwidget.numberIndex = this.numberIndex;
        gwidget.numberRes = this.numberRes;
        gwidget.numberSpace = this.numberSpace;
        gwidget.numberRightDis = this.numberRightDis;
        gwidget.numberBottomDis = this.numberBottomDis;
        gwidget.anchor = this.anchor;
        gwidget.trans = this.trans;
    }
}