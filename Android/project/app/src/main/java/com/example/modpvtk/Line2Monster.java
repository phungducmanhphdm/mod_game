package com.example.modpvtk;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;

import com.hz.actor.Monster;
import com.hz.actor.Player;
import com.hz.main.GameView;
import com.hz.main.GameWorld;

import java.util.Hashtable;

public class Line2Monster {

    public static Paint paint = new Paint();

    public  static  void paintLine2Monster(Player myPlayer, Hashtable monsterList, Canvas canvas){
        if(myPlayer == null){
            return;
        }
        Line2Monster.paint.setColor(Color.RED);
        Line2Monster.paint.setStrokeWidth(5);
        final int _x = myPlayer.getGx();
        final int _y = myPlayer.getGy();
        for (int i = 0; i < monsterList.size(); i++) {
            Monster monster = (Monster) monsterList.get(i);
            final int __x = monster.getGx();
            final int __y = monster.getGy();
            canvas.drawLine(_x, _y, __x, __y, paint);
        }
    }

}
