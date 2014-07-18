.class public Lcom/airbnb/android/views/CompanionInterestGridItemView;
.super Landroid/widget/LinearLayout;
.source "CompanionInterestGridItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field mInterestIconView:Lcom/airbnb/android/views/ColorizedIconView;

.field mInterestName:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030108

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->setOrientation(I)V

    .line 30
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->setGravity(I)V

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    .local v0, "padding":I
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->setPadding(IIII)V

    .line 34
    return-void
.end method


# virtual methods
.method public initializeView(IIZ)V
    .registers 6
    .param p1, "drawableId"    # I
    .param p2, "interestNameId"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mInterestIconView:Lcom/airbnb/android/views/ColorizedIconView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/ColorizedIconView;->setDrawableId(I)V

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mInterestName:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, p3}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->setChecked(Z)V

    .line 50
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mChecked:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getMeasuredWidth()I

    move-result v0

    .line 42
    .local v0, "width":I
    invoke-virtual {p0, v0, v0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->setMeasuredDimension(II)V

    .line 43
    return-void
.end method

.method public setChecked(Z)V
    .registers 6
    .param p1, "checked"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const v3, 0x7f0a00a4

    const v2, 0x7f0a0022

    .line 55
    iput-boolean p1, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mChecked:Z

    .line 57
    iget-boolean v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mChecked:Z

    if-eqz v0, :cond_2d

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mInterestIconView:Lcom/airbnb/android/views/ColorizedIconView;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/ColorizedIconView;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mInterestName:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    .line 66
    :goto_2c
    return-void

    .line 62
    :cond_2d
    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mInterestIconView:Lcom/airbnb/android/views/ColorizedIconView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/ColorizedIconView;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mInterestName:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    goto :goto_2c
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/airbnb/android/views/CompanionInterestGridItemView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->setChecked(Z)V

    .line 76
    return-void

    .line 75
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
