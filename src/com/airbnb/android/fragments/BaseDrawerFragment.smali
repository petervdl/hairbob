.class public Lcom/airbnb/android/fragments/BaseDrawerFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "BaseDrawerFragment.java"


# static fields
.field public static final MAX_SLIDE_OFFSET:F = 0.95f


# instance fields
.field protected mDrawerOpen:Z

.field private mIsSwappingOut:Z

.field protected mSlideOffset:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method private setupActionBar()V
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_29

    .line 73
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->setupActionBar(Landroid/app/ActionBar;)V

    .line 74
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/FontManager;->wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/FontManager;->wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 78
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_29
    return-void
.end method


# virtual methods
.method public isDrawerOpen()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mDrawerOpen:Z

    return v0
.end method

.method public isSwapping()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mIsSwappingOut:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->setupActionBar()V

    .line 85
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mIsSwappingOut:Z

    .line 93
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->setupActionBar()V

    .line 94
    return-void
.end method

.method public onDrawerClosed()V
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mDrawerOpen:Z

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 29
    return-void
.end method

.method public onDrawerOpened()V
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mDrawerOpen:Z

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 24
    return-void
.end method

.method public onDrawerSlide(F)V
    .registers 3
    .param p1, "slideOffset"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mSlideOffset:F

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 38
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 55
    const/high16 v3, 0x437f0000

    const/high16 v4, 0x3f800000

    iget v5, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mSlideOffset:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 56
    .local v0, "alpha":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 57
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_23

    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 56
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 62
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_26
    return-void
.end method

.method protected prepareMenuItem(Landroid/view/Menu;I)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 97
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 98
    .local v0, "item":Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mDrawerOpen:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mSlideOffset:F

    const v2, 0x3f733333

    cmpg-float v1, v1, v2

    if-gez v1, :cond_16

    :cond_11
    const/4 v1, 0x1

    :goto_12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    return-void

    .line 98
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public setSwapping()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BaseDrawerFragment;->mIsSwappingOut:Z

    .line 45
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 2
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 67
    return-void
.end method
