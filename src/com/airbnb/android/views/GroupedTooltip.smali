.class public Lcom/airbnb/android/views/GroupedTooltip;
.super Landroid/widget/ImageView;
.source "GroupedTooltip.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedTooltip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedTooltip;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedTooltip;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedTooltip;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/GroupedTooltip;->setVisibility(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedTooltip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_e

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/airbnb/android/views/GroupedTooltip;->setTooltipIcon(IIZ)V

    .line 40
    :cond_e
    return-void
.end method

.method public setTooltipIcon(IIZ)V
    .registers 6
    .param p1, "overrideDrawable"    # I
    .param p2, "overrideColor"    # I
    .param p3, "withPressState"    # Z

    .prologue
    .line 50
    if-lez p1, :cond_18

    .line 51
    :goto_2
    if-lez p2, :cond_1c

    .line 52
    :goto_4
    invoke-static {p1, p2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    .local v0, "tooltipIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/GroupedTooltip;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    if-eqz p3, :cond_13

    .line 56
    const v1, 0x7f020025

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/GroupedTooltip;->setBackgroundResource(I)V

    .line 59
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/GroupedTooltip;->setVisibility(I)V

    .line 60
    return-void

    .line 50
    .end local v0    # "tooltipIcon":Landroid/graphics/drawable/Drawable;
    :cond_18
    const p1, 0x7f0200f6

    goto :goto_2

    .line 51
    :cond_1c
    const p2, 0x7f0a0014

    goto :goto_4
.end method
