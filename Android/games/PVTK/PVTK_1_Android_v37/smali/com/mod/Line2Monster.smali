.class public Lcom/example/modpvtk/Line2Monster;
.super Ljava/lang/Object;

# Khai báo biến tĩnh paint
.field public static paint:Landroid/graphics/Paint;

# Phương thức tĩnh paintLine2Monster
.method public static paintLine2Monsters(Lcom/hz/actor/Player;[Ljava/util/Hashtable;Landroid/graphics/Canvas;)V
        .locals 4

        .param p0, "myPlayer"    # LPlayer;
        .param p1, "monsterList"    # Ljava/util/Hashtable;
        .param p2, "canvas"    # Landroid/graphics/Canvas;

        .prologue

        if-eqz p0, :cond_0

        sget-object v0, LLine2Monster;->paint:Landroid/graphics/Paint;
        const/4 v1, 0x3

        invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

        sget-object v0, LLine2Monster;->paint:Landroid/graphics/Paint;
        const/high16 v1, 0x40800000    # 4.0

        invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

        invoke-virtual {p0}, LPlayer;->getGx()I
        move-result v0

        const/4 v1, 0x1

        invoke-static {p0, v0, v1}, LLine2Monster;->access$0(LPlayer;IZ)I
        move-result v0

        invoke-virtual {p0}, LPlayer;->getGy()I
        move-result v1

        const/4 v2, 0x1

        invoke-static {p0, v1, v2}, LLine2Monster;->access$1(LPlayer;IZ)I
        move-result v1

        invoke-virtual {p1}, Ljava/util/Hashtable;->size()I
        move-result v2

        const/4 v3, 0x0

        :goto_0
        if-ge v3, v2, :cond_1

        invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(I)Ljava/lang/Object;
        move-result-object v1

        check-cast v1, LMonster;

        invoke-virtual {v1}, LMonster;->getGx()I
        move-result v1

        invoke-virtual {v1}, LMonster;->getGy()I
        move-result v2

        sget-object v3, LLine2Monster;->paint:Landroid/graphics/Paint

        invoke-virtual {p2, v0, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

        add-int/lit8 v3, v3, 0x1

        goto :goto_0

        :cond_0
        return-void

        :cond_1
        return-void
.end method
