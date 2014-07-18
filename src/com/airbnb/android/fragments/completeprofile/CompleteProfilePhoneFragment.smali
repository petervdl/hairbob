.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
.super Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.source "CompleteProfilePhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;
    }
.end annotation


# static fields
.field private static final SAVED_PHONE:Ljava/lang/String; = "phone"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

.field private mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;-><init>()V

    .line 28
    return-void
.end method

.method private makePhoneAccountUpdateRequest(ZLjava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V
    .registers 7
    .param p1, "isVerify"    # Z
    .param p2, "phoneParam"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 123
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$1;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V

    .line 141
    .local v0, "requestListener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;>;"
    if-eqz p1, :cond_1d

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;->verifyPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 146
    :goto_1c
    return-void

    .line 144
    :cond_1d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;->addPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/UpdatePhoneNumberRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_1c
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public displayPhoneNumberEntry()V
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 97
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_e

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 102
    :goto_d
    return-void

    .line 100
    :cond_e
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->showChildFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_d
.end method

.method public displayPhoneVerificationCodeEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "phoneNumberToVerify"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->showChildFragment(Landroid/support/v4/app/Fragment;)V

    .line 93
    return-void
.end method

.method public getPhoneNumber()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->setHasOptionsMenu(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e075b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 49
    if-eqz p1, :cond_22

    .line 50
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    iput-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 52
    :cond_22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

    .line 66
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 70
    if-nez p3, :cond_38

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getType()Lcom/airbnb/android/enums/CompleteProfileType;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_VERIFY_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    if-ne v1, v2, :cond_39

    .line 73
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getPhoneNumberToVerify()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->displayPhoneVerificationCodeEntry(Ljava/lang/String;)V

    .line 80
    :cond_38
    :goto_38
    return-object v0

    .line 76
    :cond_39
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->displayPhoneNumberEntry()V

    goto :goto_38
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onPause()V

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    return-void
.end method

.method public setPhoneNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 2
    .param p1, "phoneNumber"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 110
    return-void
.end method

.method public updateAccountPhoneCode(Ljava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V
    .registers 4
    .param p1, "phoneCode"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->makePhoneAccountUpdateRequest(ZLjava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V

    .line 118
    return-void
.end method

.method public updateAccountPhoneNumber(Ljava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->makePhoneAccountUpdateRequest(ZLjava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V

    .line 114
    return-void
.end method
