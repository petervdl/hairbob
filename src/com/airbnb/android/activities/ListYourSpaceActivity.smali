.class public Lcom/airbnb/android/activities/ListYourSpaceActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ListYourSpaceActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;
.implements Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ListYourSpaceActivity$2;,
        Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;
    }
.end annotation


# static fields
.field public static final AUTHORIZE_USER_REQUEST:I = 0x96

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "dialog"

.field private static final INTENT_EXTRA_LYS_STATE:Ljava/lang/String; = "lys_state"

.field private static final SAVED_LISTING:Ljava/lang/String; = "listing"

.field private static final SAVED_LYS_STATE:Ljava/lang/String; = "saved_lys_state"


# instance fields
.field private mCreateListing:Z

.field private mListSpaceRequest:Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/ListYourSpaceActivity;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ListYourSpaceActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/ListYourSpaceActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ListYourSpaceActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    return-object p1
.end method

.method public static intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ListYourSpaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "lys_state"

    invoke-virtual {p1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method private sendListingCreateRequest()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 108
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 109
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v6, v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "impressions"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "lys"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "login_interstitial"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 110
    const v5, 0x7f0e048c

    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x96

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    :goto_39
    return-void

    .line 114
    :cond_3a
    iget-object v5, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v5}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->getNext()Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 117
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "dialog"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 118
    .local v1, "currentDialog":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_5a

    .line 119
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 121
    :cond_5a
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    const v5, 0x7f0e0441

    invoke-static {v5, v8}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v4

    .line 125
    .local v4, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-virtual {v4, p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 126
    const-string/jumbo v5, "dialog"

    invoke-virtual {v4, v2, v5}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 128
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "bathrooms"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v5, "bedrooms"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v5, "beds"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v5, "city"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v5, "person_capacity"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v5, "property_type_id"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getPropertyTypeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v5, "room_type_category"

    iget-object v6, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getRoomTypeKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v5, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    new-instance v6, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;

    invoke-direct {v6, p0, v4}, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;-><init>(Lcom/airbnb/android/activities/ListYourSpaceActivity;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct {v5, v3, v6}, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;-><init>(Ljava/util/HashMap;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v5, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListSpaceRequest:Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    .line 163
    iget-object v5, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListSpaceRequest:Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    invoke-virtual {v5}, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;->execute()V

    goto/16 :goto_39
.end method

.method private showNext()V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->getNext()Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 242
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->forStep()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 243
    return-void
.end method


# virtual methods
.method public forStep()Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 247
    sget-object v0, Lcom/airbnb/android/activities/ListYourSpaceActivity$2;->$SwitchMap$com$airbnb$android$interfaces$ListYourSpaceTransitions$ListYourSpaceState:[I

    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 257
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 249
    :pswitch_f
    invoke-static {}, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->newInstance()Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;

    move-result-object v0

    goto :goto_e

    .line 251
    :pswitch_14
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getRoomTypeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->newInstance(Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;)Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    move-result-object v0

    goto :goto_e

    .line 253
    :pswitch_23
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPropertyTypeId()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->newInstance(Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    move-result-object v0

    goto :goto_e

    .line 255
    :pswitch_32
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getRoomTypeKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPropertyTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->newInstance(Ljava/lang/String;Ljava/lang/Integer;)Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    move-result-object v0

    goto :goto_e

    .line 247
    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_f
        :pswitch_14
        :pswitch_23
        :pswitch_32
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_12

    .line 209
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 210
    return-void

    .line 201
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mCreateListing:Z

    goto :goto_3

    .line 204
    :cond_e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->finish()V

    goto :goto_3

    .line 199
    :pswitch_data_12
    .packed-switch 0x96
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 303
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    .line 306
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    if-eq v0, v1, :cond_11

    .line 307
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->getPrevious()Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 309
    :cond_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f080046

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .local v1, "frame":Landroid/view/ViewGroup;
    invoke-virtual {v1, v1}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 73
    if-eqz p1, :cond_48

    .line 74
    const-string/jumbo v3, "saved_lys_state"

    sget-object v4, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v4}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, "state":I
    const-string/jumbo v3, "listing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Listing;

    iput-object v3, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 80
    :goto_34
    invoke-static {v2}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->getState(I)Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 82
    sget-object v3, Lcom/airbnb/android/activities/ListYourSpaceActivity$2;->$SwitchMap$com$airbnb$android$interfaces$ListYourSpaceTransitions$ListYourSpaceState:[I

    iget-object v4, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v4}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_66

    .line 91
    :goto_47
    return-void

    .line 77
    .end local v2    # "state":I
    :cond_48
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "lys_state"

    sget-object v5, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v5}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "state":I
    goto :goto_34

    .line 84
    :pswitch_5a
    new-instance v3, Lcom/airbnb/android/models/Listing;

    invoke-direct {v3}, Lcom/airbnb/android/models/Listing;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 85
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->showNext()V

    goto :goto_47

    .line 82
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5a
    .end packed-switch
.end method

.method public onProgressCancelled()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListSpaceRequest:Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListSpaceRequest:Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;->cancel()V

    .line 237
    :cond_9
    const v0, 0x7f0e07ac

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method

.method public onProgressCompleted()V
    .registers 5

    .prologue
    .line 225
    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {p0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 227
    .local v0, "user":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/User;->setTotalListingsCount(I)V

    .line 228
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;

    iget-object v3, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v2, v3}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->finish()V

    .line 230
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onResume()V

    .line 217
    iget-boolean v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mCreateListing:Z

    if-eqz v0, :cond_d

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mCreateListing:Z

    .line 219
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->sendListingCreateRequest()V

    .line 221
    :cond_d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string/jumbo v0, "saved_lys_state"

    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "listing"

    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    return-void
.end method

.method public setActionBarTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 104
    return-void
.end method

.method public setCity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "displayCity"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/models/Listing;->setCity(Ljava/lang/String;)V

    .line 280
    :try_start_5
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1e

    .line 288
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_1a
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->showNext()V

    .line 289
    return-void

    .line 284
    :catch_1e
    move-exception v1

    goto :goto_1a
.end method

.method public setPropertyType(Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)V
    .registers 4
    .param p1, "selection"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget v1, p1, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setPropertyType(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget v1, p1, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mServerDescKey:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setPropertyTypeId(I)V

    .line 273
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->showNext()V

    .line 274
    return-void
.end method

.method public setRoomsAndBeds(IIIF)V
    .registers 6
    .param p1, "maxGuests"    # I
    .param p2, "beds"    # I
    .param p3, "bedrooms"    # I
    .param p4, "bathrooms"    # F

    .prologue
    .line 293
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/Listing;->setPersonCapacity(I)V

    .line 294
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/models/Listing;->setBedCount(I)V

    .line 295
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p3}, Lcom/airbnb/android/models/Listing;->setBedrooms(I)V

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p4}, Lcom/airbnb/android/models/Listing;->setBathrooms(F)V

    .line 298
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->sendListingCreateRequest()V

    .line 299
    return-void
.end method

.method public setSpaceType(Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;)V
    .registers 4
    .param p1, "selection"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p1, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setRoomTypeKey(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget v1, p1, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setRoomType(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->showNext()V

    .line 267
    return-void
.end method
