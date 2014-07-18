.class public Lcom/airbnb/android/activities/LocalCompanionActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "LocalCompanionActivity.java"


# static fields
.field public static final ARG_MARKET:Ljava/lang/String; = "market"

.field public static final ARG_RESERVATION_ID:Ljava/lang/String; = "reservation_id"

.field public static final LOCAL_COMPANION_SERVICE_REQUEST_CODE:I = 0x270f


# instance fields
.field private mMarket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/LocalCompanionActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/LocalCompanionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;

    return-object p1
.end method

.method private fetchReservation(J)V
    .registers 5
    .param p1, "id"    # J

    .prologue
    .line 106
    new-instance v0, Lcom/airbnb/android/requests/ReservationRequest;

    new-instance v1, Lcom/airbnb/android/activities/LocalCompanionActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/LocalCompanionActivity$1;-><init>(Lcom/airbnb/android/activities/LocalCompanionActivity;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/airbnb/android/requests/ReservationRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    .line 121
    .local v0, "request":Lcom/airbnb/android/requests/ReservationRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/ReservationRequest;->execute()V

    .line 122
    return-void
.end method

.method public static intentForMarket(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/LocalCompanionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "market"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    return-object v0
.end method

.method public static intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservationId"    # J

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/LocalCompanionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    const/16 v2, 0x270f

    if-ne p1, v2, :cond_32

    .line 96
    const/4 v2, -0x1

    if-ne p2, v2, :cond_32

    .line 97
    const-string/jumbo v2, "service_text"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "populatedText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LocalCompanionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .line 100
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    const v2, 0x7f0e03b3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/LocalCompanionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->setMessageInput(Ljava/lang/String;)V

    .line 103
    .end local v0    # "fragment":Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    .end local v1    # "populatedText":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f0e03b8

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/LocalCompanionActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 45
    if-nez p1, :cond_40

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LocalCompanionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "market"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 49
    invoke-static {}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->newInstance()Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    move-result-object v0

    .line 50
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    invoke-virtual {p0, v0, v4}, Lcom/airbnb/android/activities/LocalCompanionActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 58
    .end local v0    # "fragment":Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    :goto_26
    return-void

    .line 52
    :cond_27
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LocalCompanionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "reservation_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 53
    .local v1, "reservationId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/activities/LocalCompanionActivity;->fetchReservation(J)V

    goto :goto_26

    .line 56
    .end local v1    # "reservationId":Ljava/lang/Long;
    :cond_40
    const-string/jumbo v2, "market"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;

    goto :goto_26
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/airbnb/android/activities/LocalCompanionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 74
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 70
    :pswitch_c
    iget-object v1, p0, Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;

    const v2, 0x7f0e0391

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/LocalCompanionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v0, Lcom/airbnb/android/enums/CompanionService;->SAN_FRANCISCO:Lcom/airbnb/android/enums/CompanionService;

    .line 71
    .local v0, "companionService":Lcom/airbnb/android/enums/CompanionService;
    :goto_1d
    invoke-static {p0, v0}, Lcom/airbnb/android/activities/CompanionServicesActivity;->intentForCompanionService(Landroid/content/Context;Lcom/airbnb/android/enums/CompanionService;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x270f

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/LocalCompanionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    const/4 v1, 0x1

    goto :goto_b

    .line 70
    .end local v0    # "companionService":Lcom/airbnb/android/enums/CompanionService;
    :cond_28
    sget-object v0, Lcom/airbnb/android/enums/CompanionService;->TOKYO:Lcom/airbnb/android/enums/CompanionService;

    goto :goto_1d

    .line 68
    nop

    :pswitch_data_2c
    .packed-switch 0x7f080543
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020128

    const v2, 0x7f0a0014

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 88
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string/jumbo v0, "market"

    iget-object v1, p0, Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
