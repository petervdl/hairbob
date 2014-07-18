.class public Lcom/airbnb/android/views/AirTextView;
.super Landroid/widget/TextView;
.source "AirTextView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Typefaceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/AirTextView$TextHelper;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/views/AirTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    :cond_c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/views/AirTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    :cond_c
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-static {p1, p2, p0}, Lcom/airbnb/android/views/AirTextView$TextHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/airbnb/android/interfaces/Typefaceable;)V

    .line 36
    return-void
.end method

.method public setFont(Lcom/airbnb/android/utils/FontManager$Font;)V
    .registers 2
    .param p1, "font"    # Lcom/airbnb/android/utils/FontManager$Font;

    .prologue
    .line 40
    invoke-static {p1, p0}, Lcom/airbnb/android/views/AirTextView$TextHelper;->setFont(Lcom/airbnb/android/utils/FontManager$Font;Lcom/airbnb/android/interfaces/Typefaceable;)V

    .line 41
    return-void
.end method
