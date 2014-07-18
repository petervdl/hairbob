.class public Lcom/airbnb/android/activities/SearchFilterActivity;
.super Lcom/airbnb/android/activities/SlideUpTransparentActivity;
.source "SearchFilterActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/airbnb/android/activities/SearchFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/SearchFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/SearchFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public dismissContent(Z)V
    .registers 7
    .param p1, "save"    # Z

    .prologue
    const/4 v3, 0x0

    .line 33
    if-eqz p1, :cond_37

    const-string/jumbo v2, "save_filters_click"

    :goto_6
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackFiltersAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 34
    if-eqz p1, :cond_33

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SearchFilterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SearchFilterActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SearchFilterFragment;

    .line 36
    .local v0, "searchFilterFragment":Lcom/airbnb/android/fragments/SearchFilterFragment;
    const/4 v1, 0x0

    .line 37
    .local v1, "searchInfoChanged":Z
    if-eqz v0, :cond_2d

    .line 38
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->saveFilters()Z

    move-result v1

    .line 39
    if-eqz v1, :cond_3b

    const v2, 0x7f0e0087

    :goto_26
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 41
    :cond_2d
    if-eqz v1, :cond_3f

    const/4 v2, -0x1

    :goto_30
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SearchFilterActivity;->setResult(I)V

    .line 43
    .end local v0    # "searchFilterFragment":Lcom/airbnb/android/fragments/SearchFilterFragment;
    .end local v1    # "searchInfoChanged":Z
    :cond_33
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->dismissContent(Z)V

    .line 44
    return-void

    .line 33
    :cond_37
    const-string/jumbo v2, "cancel_click"

    goto :goto_6

    .line 39
    .restart local v0    # "searchFilterFragment":Lcom/airbnb/android/fragments/SearchFilterFragment;
    .restart local v1    # "searchInfoChanged":Z
    :cond_3b
    const v2, 0x7f0e0547

    goto :goto_26

    :cond_3f
    move v2, v3

    .line 41
    goto :goto_30
.end method

.method protected getAlphaAnimDelay()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method protected getFragmentTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/airbnb/android/activities/SearchFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideUpTransparentFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .registers 3
    .param p1, "fragManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 23
    invoke-static {}, Lcom/airbnb/android/fragments/SearchFilterFragment;->newInstance()Lcom/airbnb/android/fragments/SearchFilterFragment;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->onBackPressed()V

    .line 49
    const-string/jumbo v0, "cancel_click"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackFiltersAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 50
    return-void
.end method
