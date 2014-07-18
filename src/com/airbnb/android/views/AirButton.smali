.class public Lcom/airbnb/android/views/AirButton;
.super Landroid/widget/Button;
.source "AirButton.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Typefaceable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/views/AirButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    :cond_c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/views/AirButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    :cond_c
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-static {p1, p2, p0}, Lcom/airbnb/android/views/AirTextView$TextHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/airbnb/android/interfaces/Typefaceable;)V

    .line 32
    return-void
.end method

.method public setFont(Lcom/airbnb/android/utils/FontManager$Font;)V
    .registers 2
    .param p1, "font"    # Lcom/airbnb/android/utils/FontManager$Font;

    .prologue
    .line 36
    invoke-static {p1, p0}, Lcom/airbnb/android/views/AirTextView$TextHelper;->setFont(Lcom/airbnb/android/utils/FontManager$Font;Lcom/airbnb/android/interfaces/Typefaceable;)V

    .line 37
    return-void
.end method
