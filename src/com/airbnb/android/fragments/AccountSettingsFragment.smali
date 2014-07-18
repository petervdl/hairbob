.class public Lcom/airbnb/android/fragments/AccountSettingsFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;


# static fields
.field private static final DIALOG_REQ_DISCONNECT_GPLUS:I = 0x1c6

.field private static final DIALOG_REQ_LOGOUT:I = 0xea

.field private static final FRAGMENT_CURRENCIES:Ljava/lang/String; = "currency_dialog"

.field private static final TAG:Ljava/lang/String;

.field private static final THIRTY_FIVE_DAYS:J = 0xb43e9400L


# instance fields
.field private mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

.field private mCurrencyDialogFragment:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

.field mCurrencySettingsCell:Lcom/airbnb/android/views/GroupedCell;

.field private mCurrentUser:Lcom/airbnb/android/models/User;

.field mDebugSettingsCell:Lcom/airbnb/android/views/GroupedCell;

.field private mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

.field private mGoogleConnected:Z

.field mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

.field private mGroupsEnabled:Z

.field private mGroupsNotifsEnabled:Z

.field mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

.field mHelpCell:Lcom/airbnb/android/views/GroupedCell;

.field mInviteFriendsCell:Lcom/airbnb/android/views/GroupedCell;

.field mLogOutCell:Lcom/airbnb/android/views/GroupedCell;

.field private mNotifSoundsEnabled:Z

.field private mNotifsEnabled:Z

.field mPayoutSettingsCell:Lcom/airbnb/android/views/GroupedCell;

.field mPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

.field mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

.field mReferralCodeCell:Lcom/airbnb/android/views/GroupedCell;

.field private mServersideSettingsChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->goToVerifyIdFlow()V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->revokeGoogleClientPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mServersideSettingsChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifSoundsEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Lcom/airbnb/android/requests/CurrenciesRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

    return-object v0
.end method

.method static synthetic access$602(Lcom/airbnb/android/fragments/AccountSettingsFragment;Lcom/airbnb/android/requests/CurrenciesRequest;)Lcom/airbnb/android/requests/CurrenciesRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/CurrenciesRequest;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencyDialogFragment:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    return-object v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/AccountSettingsFragment;Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencyDialogFragment:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    return-object p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->showDisconnectConfirmationDialog()V

    return-void
.end method

.method private disconnectGoogle()V
    .registers 2

    .prologue
    .line 377
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V

    .line 378
    new-instance v0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-static {v0}, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;->disconnectGoogle(Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/DeauthorizeServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;->execute()V

    .line 406
    return-void
.end method

.method private getGroupsPushNotifications()V
    .registers 3

    .prologue
    .line 190
    new-instance v0, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 203
    return-void
.end method

.method private goToVerifyIdFlow()V
    .registers 4

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V

    .line 424
    new-instance v0, Lcom/airbnb/android/requests/VerificationsRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/VerificationsRequest;-><init>(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/VerificationsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 440
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 98
    new-instance v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;-><init>()V

    return-object v0
.end method

.method private revokeGoogleClientPermission()V
    .registers 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v1, :cond_1a

    .line 410
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getClient()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    .line 411
    .local v0, "googleClient":Lcom/google/android/gms/plus/PlusClient;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 412
    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$14;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$14;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusClient;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    .line 420
    .end local v0    # "googleClient":Lcom/google/android/gms/plus/PlusClient;
    :cond_1a
    return-void
.end method

.method private saveSettings()V
    .registers 8

    .prologue
    .line 460
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v5

    if-eqz v5, :cond_c7

    .line 461
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 462
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 464
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 465
    .local v4, "props":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v1

    .line 466
    .local v1, "gcmHelper":Lcom/airbnb/android/utils/GCMHelper;
    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c8

    .line 467
    const-string/jumbo v5, "devices[android_gcm][enabled]"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v5, "devices[android_gcm][token]"

    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v5, "android_gcm_enabled"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 474
    :goto_4f
    const-string/jumbo v5, "messaging"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 475
    const-string/jumbo v5, "settings[messaging]"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v5, "guest_reservation"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 478
    const-string/jumbo v5, "settings[guest_reservation]"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string/jumbo v5, "host_reservation"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    const-string/jumbo v5, "settings[host_reservation]"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string/jumbo v5, "prefs_enable_sounds"

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifSoundsEnabled:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    if-eqz v5, :cond_cc

    iget-boolean v5, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z

    if-eqz v5, :cond_cc

    const/4 v2, 0x1

    .line 486
    .local v2, "groupsEnabled":Z
    :goto_9c
    const-string/jumbo v5, "groups_alerts_enabled"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    const-string/jumbo v5, "settings[groups]"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mServersideSettingsChanged:Z

    if-eqz v5, :cond_c7

    .line 491
    new-instance v5, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;

    new-instance v6, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;

    invoke-direct {v6, p0, v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;Landroid/content/SharedPreferences;)V

    invoke-direct {v5, v4, v6}, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v5}, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;->execute()V

    .line 505
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsEnabled:Z

    if-eqz v5, :cond_c7

    .line 506
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setGroupsNotifications()V

    .line 510
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "gcmHelper":Lcom/airbnb/android/utils/GCMHelper;
    .end local v2    # "groupsEnabled":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "props":Ljava/util/Properties;
    :cond_c7
    return-void

    .line 471
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "gcmHelper":Lcom/airbnb/android/utils/GCMHelper;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "props":Ljava/util/Properties;
    :cond_c8
    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->setupGCM()V

    goto :goto_4f

    .line 485
    :cond_cc
    const/4 v2, 0x0

    goto :goto_9c
.end method

.method private setActionBarLoaderVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 519
    return-void
.end method

.method private setGroupsNotifications()V
    .registers 4

    .prologue
    .line 513
    new-instance v1, Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;-><init>(ZLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;->execute()V

    .line 515
    return-void

    .line 513
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private setupCurrencySettings()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencySettingsCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencySettingsCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method

.method private setupDebugSettings()V
    .registers 3

    .prologue
    .line 162
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_16

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mDebugSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mDebugSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$3;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_16
    return-void
.end method

.method private setupGoogleSettingsIfNeeded()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    .line 333
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    if-nez v1, :cond_c

    .line 334
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 359
    :goto_b
    return-void

    .line 336
    :cond_c
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "verifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2a

    const-string/jumbo v1, "google"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_1e
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleConnected:Z

    .line 339
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleConnected:Z

    if-nez v1, :cond_2c

    .line 340
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto :goto_b

    .line 337
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 342
    :cond_2c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getPlusClientFragment(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;[Ljava/lang/String;Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .line 345
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    const v2, 0x7f0e07b6

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/AccountSettingsFragment$11;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$11;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b
.end method

.method private setupGroupsNotifications()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$7;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 257
    return-void
.end method

.method private setupHelp()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mHelpCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$12;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method private setupHostPayoutMethod()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v0

    if-gtz v0, :cond_14

    .line 320
    :cond_c
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPayoutSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 330
    :goto_13
    return-void

    .line 322
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPayoutSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$10;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$10;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13
.end method

.method private setupInviteFriends()V
    .registers 8

    .prologue
    .line 136
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mInviteFriendsCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/AccountSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$1;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 144
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide v5, 0xb43e9400L

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_3c

    .line 147
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mReferralCodeCell:Lcom/airbnb/android/views/GroupedCell;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 159
    :goto_3b
    return-void

    .line 149
    :cond_3c
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mReferralCodeCell:Lcom/airbnb/android/views/GroupedCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mReferralCodeCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/AccountSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$2;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3b
.end method

.method private setupLogOut()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_14

    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mLogOutCell:Lcom/airbnb/android/views/GroupedCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mLogOutCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/AccountSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$4;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_14
    return-void
.end method

.method private setupPushNotifSounds()V
    .registers 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "prefs_enable_sounds"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifSoundsEnabled:Z

    .line 264
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-boolean v2, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifSoundsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 265
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v2, Lcom/airbnb/android/fragments/AccountSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$8;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    return-void
.end method

.method private setupPushNotifications()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 220
    :cond_25
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 244
    :goto_34
    return-void

    .line 225
    :cond_35
    const-string/jumbo v1, "android_gcm_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    .line 226
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 228
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v4, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v4, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    if-eqz v1, :cond_67

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsEnabled:Z

    if-eqz v1, :cond_67

    move v1, v2

    :goto_5a
    invoke-virtual {v4, v1}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z

    if-eqz v4, :cond_69

    :goto_63
    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    goto :goto_34

    :cond_67
    move v1, v3

    .line 241
    goto :goto_5a

    :cond_69
    move v2, v3

    .line 242
    goto :goto_63
.end method

.method private showDisconnectConfirmationDialog()V
    .registers 7

    .prologue
    .line 371
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e07b7

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0544

    const/4 v2, 0x0

    const v3, 0x7f0e085b

    const/16 v4, 0x1c6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 374
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 529
    sparse-switch p1, :sswitch_data_36

    .line 549
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    :goto_6
    return-void

    .line 531
    :sswitch_7
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->disconnectGoogle()V

    goto :goto_6

    .line 535
    :sswitch_b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getPlusClientFragment(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;[Ljava/lang/String;Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v0

    .line 538
    .local v0, "googleClientFragment":Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 539
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 543
    :cond_23
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->logout()V

    .line 545
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->intentForClearTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 529
    :sswitch_data_36
    .sparse-switch
        0xea -> :sswitch_b
        0x1c6 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string/jumbo v0, "groups"

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsEnabled:Z

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 113
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    .line 115
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupPushNotifications()V

    .line 116
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupGroupsNotifications()V

    .line 117
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupPushNotifSounds()V

    .line 118
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupCurrencySettings()V

    .line 119
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupHostPayoutMethod()V

    .line 120
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupInviteFriends()V

    .line 121
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupDebugSettings()V

    .line 122
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupHelp()V

    .line 123
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupLogOut()V

    .line 126
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V

    .line 128
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsEnabled:Z

    if-eqz v1, :cond_3f

    .line 129
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getGroupsPushNotifications()V

    .line 132
    :cond_3f
    return-object v0
.end method

.method public onCurrencySelected(Lcom/airbnb/android/models/Currency;)V
    .registers 6
    .param p1, "selected"    # Lcom/airbnb/android/models/Currency;

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/utils/CurrencyHelper;->setCurrency(Ljava/lang/String;ZZ)V

    .line 524
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencySettingsCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 444
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onPause()V

    .line 446
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

    if-eqz v0, :cond_c

    .line 447
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CurrenciesRequest;->cancel()V

    .line 450
    :cond_c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->saveSettings()V

    .line 451
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupGoogleSettingsIfNeeded()V

    .line 211
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 556
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 558
    const v0, 0x7f0e0032

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 559
    return-void
.end method
