.class public Lcom/airbnb/android/views/CompanionGridItemView;
.super Landroid/widget/FrameLayout;
.source "CompanionGridItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field mSelectionTextView:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030107

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 26
    return-void
.end method


# virtual methods
.method public initializeView(IZ)V
    .registers 4
    .param p1, "stringResourceId"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mSelectionTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/airbnb/android/views/CompanionGridItemView;->setSelected(Z)V

    .line 32
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 5
    .param p1, "checked"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mChecked:Z

    .line 39
    iget-boolean v0, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mChecked:Z

    if-eqz v0, :cond_25

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mSelectionTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    .line 46
    :goto_24
    return-void

    .line 43
    :cond_25
    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mSelectionTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/CompanionGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    goto :goto_24
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/views/CompanionGridItemView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CompanionGridItemView;->setChecked(Z)V

    .line 56
    return-void

    .line 55
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
