.class public Lcom/airbnb/android/views/AirTextView$TextHelper;
.super Ljava/lang/Object;
.source "AirTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/AirTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/airbnb/android/interfaces/Typefaceable;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "view"    # Lcom/airbnb/android/interfaces/Typefaceable;

    .prologue
    const/4 v6, 0x0

    .line 54
    sget-object v4, Lcom/airbnb/android/R$styleable;->AirTextView:[I

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 57
    .local v3, "fontIndex":I
    sget-object v4, Lcom/airbnb/android/utils/FontManager$Font;->Default:Lcom/airbnb/android/utils/FontManager$Font;

    invoke-virtual {v4}, Lcom/airbnb/android/utils/FontManager$Font;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_38

    .line 58
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010097

    aput v5, v4, v6

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 59
    .local v2, "faceArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 60
    .local v1, "face":I
    packed-switch v1, :pswitch_data_3c

    .line 67
    sget-object v4, Lcom/airbnb/android/utils/FontManager$Font;->CircularBook:Lcom/airbnb/android/utils/FontManager$Font;

    invoke-interface {p2, v4}, Lcom/airbnb/android/interfaces/Typefaceable;->setFont(Lcom/airbnb/android/utils/FontManager$Font;)V

    .line 70
    :goto_2b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .end local v1    # "face":I
    .end local v2    # "faceArray":Landroid/content/res/TypedArray;
    :goto_2e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 62
    .restart local v1    # "face":I
    .restart local v2    # "faceArray":Landroid/content/res/TypedArray;
    :pswitch_32
    sget-object v4, Lcom/airbnb/android/utils/FontManager$Font;->CircularBold:Lcom/airbnb/android/utils/FontManager$Font;

    invoke-interface {p2, v4}, Lcom/airbnb/android/interfaces/Typefaceable;->setFont(Lcom/airbnb/android/utils/FontManager$Font;)V

    goto :goto_2b

    .line 72
    .end local v1    # "face":I
    .end local v2    # "faceArray":Landroid/content/res/TypedArray;
    :cond_38
    invoke-static {v3, p2}, Lcom/airbnb/android/views/AirTextView$TextHelper;->setFontByIndex(ILcom/airbnb/android/interfaces/Typefaceable;)V

    goto :goto_2e

    .line 60
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_32
    .end packed-switch
.end method

.method public static setFont(Lcom/airbnb/android/utils/FontManager$Font;Lcom/airbnb/android/interfaces/Typefaceable;)V
    .registers 4
    .param p0, "font"    # Lcom/airbnb/android/utils/FontManager$Font;
    .param p1, "view"    # Lcom/airbnb/android/interfaces/Typefaceable;

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/airbnb/android/utils/FontManager;->getTypeface(Lcom/airbnb/android/utils/FontManager$Font;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 46
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-interface {p1}, Lcom/airbnb/android/interfaces/Typefaceable;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_15

    .line 47
    invoke-interface {p1, v0}, Lcom/airbnb/android/interfaces/Typefaceable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    :goto_14
    return-void

    .line 49
    :cond_15
    invoke-interface {p1}, Lcom/airbnb/android/interfaces/Typefaceable;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/airbnb/android/interfaces/Typefaceable;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_14
.end method

.method static setFontByIndex(ILcom/airbnb/android/interfaces/Typefaceable;)V
    .registers 4
    .param p0, "fontIndex"    # I
    .param p1, "view"    # Lcom/airbnb/android/interfaces/Typefaceable;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/airbnb/android/utils/FontManager$Font;->getFont(I)Lcom/airbnb/android/utils/FontManager$Font;

    move-result-object v0

    .line 80
    .local v0, "font":Lcom/airbnb/android/utils/FontManager$Font;
    if-eqz v0, :cond_d

    sget-object v1, Lcom/airbnb/android/utils/FontManager$Font;->Default:Lcom/airbnb/android/utils/FontManager$Font;

    if-eq v0, v1, :cond_d

    .line 81
    invoke-interface {p1, v0}, Lcom/airbnb/android/interfaces/Typefaceable;->setFont(Lcom/airbnb/android/utils/FontManager$Font;)V

    .line 83
    :cond_d
    return-void
.end method
