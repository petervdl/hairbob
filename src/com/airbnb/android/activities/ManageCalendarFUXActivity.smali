.class public Lcom/airbnb/android/activities/ManageCalendarFUXActivity;
.super Lcom/airbnb/android/activities/FUXBaseActivity;
.source "ManageCalendarFUXActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;,
        Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragWelcome;,
        Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;,
        Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragMeet;,
        Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;
    }
.end annotation


# static fields
.field private static final KEY_LISTING:Ljava/lang/String; = "listing"

.field private static final KEY_RAD:Ljava/lang/String; = "radius"

.field private static final KEY_X:Ljava/lang/String; = "x"

.field private static final KEY_Y:Ljava/lang/String; = "y"


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/activities/FUXBaseActivity;-><init>()V

    .line 151
    return-void
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;FFF)Landroid/content/Intent;
    .registers 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "spotLightX"    # F
    .param p3, "spotLightY"    # F
    .param p4, "spotLightRadius"    # F

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 36
    const-string/jumbo v1, "radius"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 37
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method


# virtual methods
.method public forStep(I)Landroid/support/v4/app/Fragment;
    .registers 7
    .param p1, "step"    # I

    .prologue
    const/high16 v4, -0x40800000

    .line 52
    packed-switch p1, :pswitch_data_6a

    .line 68
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 54
    :pswitch_7
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragListed;

    move-result-object v0

    goto :goto_6

    .line 56
    :pswitch_12
    new-instance v0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragMeet;

    invoke-direct {v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragMeet;-><init>()V

    goto :goto_6

    .line 58
    :pswitch_18
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "radius"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;->newInstance(FFF)Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragSet;

    move-result-object v0

    goto :goto_6

    .line 63
    :pswitch_3e
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0e07a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 64
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    new-instance v0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragWelcome;

    invoke-direct {v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFuxFragWelcome;-><init>()V

    goto :goto_6

    .line 52
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
        :pswitch_18
        :pswitch_3e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 44
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/FUXBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->setStep(I)V

    .line 48
    :cond_1e
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/airbnb/android/activities/FUXBaseActivity;->onDestroy()V

    .line 148
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 149
    return-void
.end method
