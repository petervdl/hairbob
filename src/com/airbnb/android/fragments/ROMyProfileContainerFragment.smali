.class public Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;
.super Lcom/airbnb/android/fragments/ROContainerFragment;
.source "ROMyProfileContainerFragment.java"


# static fields
.field private static final DIALOG_REQ_LOGOUT:I = 0xea

.field private static final DIALOG_REQ_WRITE_REVIEW:I = 0xeb

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private googleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROContainerFragment;-><init>()V

    return-void
.end method

.method private checkLogin()V
    .registers 4

    .prologue
    .line 132
    new-instance v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;-><init>(Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 147
    return-void
.end method

.method private downloadNotificationPrefs()V
    .registers 4

    .prologue
    .line 128
    new-instance v0, Lcom/airbnb/android/requests/GetAccountNotificationsRequest;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetAccountNotificationsRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetAccountNotificationsRequest;->execute()V

    .line 129
    return-void
.end method

.method public static newInstanceForUserId(J)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 4
    .param p0, "userId"    # J

    .prologue
    .line 50
    const/4 v0, 0x1

    sget-object v1, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->newInstanceForUserId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceForUserId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;
    .registers 11
    .param p0, "userId"    # J
    .param p2, "isWideMode"    # Z
    .param p3, "launchState"    # I

    .prologue
    .line 44
    new-instance v6, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-direct {v6}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;-><init>()V

    .line 45
    .local v6, "fragment":Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;
    const-string/jumbo v0, "user_id"

    const/4 v3, 0x0

    move-wide v1, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getBundleArgs(Ljava/lang/String;JZZI)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v6
.end method


# virtual methods
.method public confirmedLogout()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->googleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->googleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 100
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->googleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 102
    :cond_11
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->logout()V

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/activities/MainActivity;->intentForClearTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 110
    packed-switch p1, :pswitch_data_38

    .line 124
    :cond_6
    :goto_6
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROContainerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    return-void

    .line 112
    :pswitch_a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->confirmedLogout()V

    goto :goto_6

    .line 116
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAppStoreLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 119
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 110
    :pswitch_data_38
    .packed-switch 0xea
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->isMyProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    const/high16 v0, 0x7f100000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    :goto_b
    return-void

    .line 81
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/ROContainerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROContainerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getPlusClientFragment(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;[Ljava/lang/String;Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->googleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->checkLogin()V

    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->downloadNotificationPrefs()V

    .line 63
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 95
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 89
    :pswitch_d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/EditProfileActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 92
    :pswitch_19
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/SettingsActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 87
    nop

    :pswitch_data_26
    .packed-switch 0x7f080530
        :pswitch_d
        :pswitch_19
    .end packed-switch
.end method

.method public profilePhotoUpdated(Lcom/airbnb/android/events/ProfilePhotoUpdatedEvent;)V
    .registers 4
    .param p1, "ev"    # Lcom/airbnb/android/events/ProfilePhotoUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 152
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->updateProfileImage(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method protected setupActionbar(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 4
    .param p1, "status"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->isMyProfile()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0e0747

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 74
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_18
    return-void
.end method
