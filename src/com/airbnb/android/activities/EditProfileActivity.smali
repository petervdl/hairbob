.class public Lcom/airbnb/android/activities/EditProfileActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "EditProfileActivity.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/EditProfileInterface;


# instance fields
.field private mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/EditProfileActivity;Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/EditProfileActivity;
    .param p1, "x1"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/EditProfileActivity;->onProfileUpdated(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/EditProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private onProfileUpdated(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    .registers 5
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/airbnb/android/activities/EditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 135
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1c

    instance-of v1, v0, Lcom/airbnb/android/fragments/EditProfileFragment;

    if-eqz v1, :cond_1c

    .line 136
    check-cast v0, Lcom/airbnb/android/fragments/EditProfileFragment;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/EditProfileFragment;->onProfileUpdated(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    .line 138
    :cond_1c
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ProfileUpdatedEvent;

    invoke-direct {v2, p1}, Lcom/airbnb/android/events/ProfileUpdatedEvent;-><init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method private setOnBackListener(Lcom/airbnb/android/interfaces/OnBackListener;)V
    .registers 2
    .param p1, "f"    # Lcom/airbnb/android/interfaces/OnBackListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/airbnb/android/activities/EditProfileActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    .line 55
    return-void
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/airbnb/android/activities/SolitAirActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 48
    instance-of v0, p1, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;

    if-eqz v0, :cond_d

    .line 49
    check-cast p1, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;

    .end local p1    # "f":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/EditProfileActivity;->setOnBackListener(Lcom/airbnb/android/interfaces/OnBackListener;)V

    .line 51
    :cond_d
    return-void
.end method

.method private updateUserProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V
    .registers 5
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/airbnb/android/requests/EditProfileRequest;

    new-instance v1, Lcom/airbnb/android/activities/EditProfileActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/activities/EditProfileActivity$2;-><init>(Lcom/airbnb/android/activities/EditProfileActivity;Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/airbnb/android/requests/EditProfileRequest;-><init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 130
    .local v0, "editProfileRequest":Lcom/airbnb/android/requests/EditProfileRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/EditProfileRequest;->execute()V

    .line 131
    return-void
.end method


# virtual methods
.method public doneEdit(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/Object;)V
    .registers 4
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/EditProfileActivity;->updateUserProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/activities/EditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 93
    return-void
.end method

.method public doneEditName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/airbnb/android/requests/EditProfileRequest;

    new-instance v1, Lcom/airbnb/android/activities/EditProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/EditProfileActivity$1;-><init>(Lcom/airbnb/android/activities/EditProfileActivity;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/airbnb/android/requests/EditProfileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/EditProfileRequest;->execute()V

    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/activities/EditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 113
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/activities/EditProfileActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    if-eqz v0, :cond_d

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/activities/EditProfileActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/OnBackListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    :goto_c
    return-void

    .line 64
    :cond_d
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    if-nez p1, :cond_17

    .line 40
    const-string/jumbo v0, "impression"

    const-string/jumbo v1, "edit_profile"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 41
    invoke-static {}, Lcom/airbnb/android/fragments/EditProfileFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/EditProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 43
    :cond_17
    return-void
.end method

.method public onNameSectionSelected()V
    .registers 5

    .prologue
    .line 75
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 76
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;->newInstance(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/EditProfileDualTextFieldsFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/EditProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 77
    return-void
.end method

.method public onPhoneNumbersSelected()V
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/EditProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 81
    return-void
.end method

.method public onProfileSectionSelected(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    .registers 4
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .prologue
    .line 69
    const-string/jumbo v0, "click"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackTextSectionAction(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 70
    invoke-static {p1}, Lcom/airbnb/android/utils/UserProfileUtils;->getValue(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->newInstance(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/EditProfileActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 71
    return-void
.end method

.method public unregisterOnBackListener()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/EditProfileActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    .line 86
    return-void
.end method
