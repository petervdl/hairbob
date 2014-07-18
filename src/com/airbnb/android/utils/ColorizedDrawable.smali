.class public Lcom/airbnb/android/utils/ColorizedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorizedDrawable.java"


# static fields
.field private static final DISABLED:I = 0x1

.field private static final NORMAL:I = 0x0

.field private static final PRESSED:I = 0x2

.field private static final SELECTED:I = 0x3


# instance fields
.field protected final mBlack:Landroid/graphics/drawable/Drawable;

.field protected mColorStateList:Landroid/content/res/ColorStateList;

.field protected mColors:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "black"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 8
    .param p1, "black"    # Landroid/graphics/drawable/Drawable;
    .param p2, "baseColor"    # I
    .param p3, "disabledColor"    # I
    .param p4, "pressedColor"    # I
    .param p5, "selectedColor"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/ColorizedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    .line 35
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    return-void
.end method

.method private createColoredDrawableBounds(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "dst":Landroid/graphics/drawable/Drawable;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/utils/ColorizedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    return-object v0
.end method

.method public static forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;
    .registers 4
    .param p0, "drawableId"    # I
    .param p1, "colorStateListId"    # I

    .prologue
    .line 42
    new-instance v0, Lcom/airbnb/android/utils/ColorizedDrawable;

    invoke-static {}, Lcom/airbnb/android/utils/ColorizedDrawable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .local v0, "drawable":Lcom/airbnb/android/utils/ColorizedDrawable;
    invoke-static {}, Lcom/airbnb/android/utils/ColorizedDrawable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 44
    return-object v0
.end method

.method public static forIdWithColor(II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "drawableId"    # I
    .param p1, "colorId"    # I

    .prologue
    .line 58
    invoke-static {}, Lcom/airbnb/android/utils/ColorizedDrawable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, "dst":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/airbnb/android/utils/ColorizedDrawable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 61
    return-object v0
.end method

.method public static forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;
    .registers 12
    .param p0, "blackDrawableId"    # I
    .param p1, "baseId"    # I
    .param p2, "disabledId"    # I
    .param p3, "pressedId"    # I
    .param p4, "selectedId"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/airbnb/android/utils/ColorizedDrawable;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 50
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 51
    .local v2, "base":I
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 52
    .local v3, "disabled":I
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 53
    .local v4, "pressed":I
    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 54
    .local v5, "selected":I
    new-instance v0, Lcom/airbnb/android/utils/ColorizedDrawable;

    invoke-virtual {v6, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/utils/ColorizedDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private static getResources()Landroid/content/res/Resources;
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/utils/ColorizedDrawable;->getState()[I

    move-result-object v8

    .line 81
    .local v8, "states":[I
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    if-nez v9, :cond_56

    .line 82
    const/4 v2, 0x1

    .line 83
    .local v2, "disabled":Z
    const/4 v5, 0x0

    .line 84
    .local v5, "pressed":Z
    const/4 v6, 0x0

    .line 85
    .local v6, "selected":Z
    move-object v0, v8

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_27

    aget v7, v0, v3

    .line 86
    .local v7, "state":I
    const v9, 0x101009e

    if-ne v7, v9, :cond_18

    .line 87
    const/4 v2, 0x0

    .line 89
    :cond_18
    const v9, 0x10100a7

    if-ne v7, v9, :cond_1e

    .line 90
    const/4 v5, 0x1

    .line 92
    :cond_1e
    const v9, 0x10100a1

    if-ne v7, v9, :cond_24

    .line 93
    const/4 v6, 0x1

    .line 85
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 96
    .end local v7    # "state":I
    :cond_27
    if-eqz v2, :cond_3a

    .line 97
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 109
    .end local v0    # "arr$":[I
    .end local v2    # "disabled":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pressed":Z
    .end local v6    # "selected":Z
    .local v1, "color":I
    :goto_30
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v9, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->createColoredDrawableBounds(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    return-void

    .line 98
    .end local v1    # "color":I
    .restart local v0    # "arr$":[I
    .restart local v2    # "disabled":Z
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "pressed":Z
    .restart local v6    # "selected":Z
    :cond_3a
    if-eqz v5, :cond_44

    .line 99
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_30

    .line 100
    .end local v1    # "color":I
    :cond_44
    if-eqz v6, :cond_4e

    .line 101
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_30

    .line 103
    .end local v1    # "color":I
    :cond_4e
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColors:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_30

    .line 106
    .end local v0    # "arr$":[I
    .end local v1    # "color":I
    .end local v2    # "disabled":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pressed":Z
    .end local v6    # "selected":Z
    :cond_56
    iget-object v9, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    const/high16 v10, -0x1000000

    invoke-virtual {v9, v8, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_30
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/airbnb/android/utils/ColorizedDrawable;->invalidateSelf()V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 142
    return-void
.end method

.method public setBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/utils/ColorizedDrawable;->mBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 147
    return-void
.end method
