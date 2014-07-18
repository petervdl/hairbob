.class public Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;
.super Lcom/airbnb/android/activities/SlideUpTransparentActivity;
.source "LastMinuteBookingFiltersActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/airbnb/android/activities/SearchFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public dismissContent(Z)V
    .registers 4
    .param p1, "save"    # Z

    .prologue
    .line 32
    if-eqz p1, :cond_18

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    check-cast v0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->saveFilters()V

    .line 34
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;->setResult(I)V

    .line 38
    :cond_18
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->dismissContent(Z)V

    .line 39
    return-void
.end method

.method protected getAlphaAnimDelay()I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected getFragmentTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideUpTransparentFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .registers 3
    .param p1, "fragManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 22
    invoke-static {}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->newInstance()Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    move-result-object v0

    return-object v0
.end method
