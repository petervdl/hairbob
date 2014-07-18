.class public Lcom/airbnb/android/fragments/InviteFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "InviteFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/InviteFragment$6;
    }
.end annotation


# static fields
.field private static final SAVED_EARNED_REFERREES:Ljava/lang/String; = "earned_referrees"

.field private static final SAVED_PENDING_REFEREES:Ljava/lang/String; = "pending_referrees"

.field private static final SAVED_REFERRAL_URL:Ljava/lang/String; = "referral_url"

.field private static final SAVED_REFERRER_CREDIT_GUEST:Ljava/lang/String; = "referrer_credit_guest"

.field private static final SAVED_REFERRER_CREDIT_HOST:Ljava/lang/String; = "referrer_credit_host"

.field private static final SAVED_SMS_MESSAGE:Ljava/lang/String; = "sms_message"


# instance fields
.field mBtnInviteFriends:Landroid/view/View;

.field mEarnedReferrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field

.field mInviteFriendsParagraph:Landroid/widget/TextView;

.field mInviteFriendsText:Landroid/widget/TextView;

.field mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mOfferReferrerCreditGuest:Ljava/lang/String;

.field private mOfferReferrerCreditHost:Ljava/lang/String;

.field mPendingReferrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field

.field private mReferralUrl:Ljava/lang/String;

.field private mSmsMessage:Ljava/lang/String;

.field mTermsAndConditionsLink:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 246
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InviteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/InviteFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InviteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mSmsMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InviteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mSmsMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InviteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InviteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditGuest:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/InviteFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InviteFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/fragments/InviteFragment;->setupViews()V

    return-void
.end method

.method private setupViews()V
    .registers 6

    .prologue
    .line 229
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsParagraph:Landroid/widget/TextView;

    const v1, 0x7f0e060c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditHost:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditGuest:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/InviteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 232
    return-void
.end method


# virtual methods
.method public buildIntentForPackage(Landroid/content/Intent;Lcom/airbnb/android/enums/CustomShareActivities;)Landroid/content/Intent;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "csa"    # Lcom/airbnb/android/enums/CustomShareActivities;

    .prologue
    .line 237
    sget-object v0, Lcom/airbnb/android/fragments/InviteFragment$6;->$SwitchMap$com$airbnb$android$enums$CustomShareActivities:[I

    invoke-virtual {p2}, Lcom/airbnb/android/enums/CustomShareActivities;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 245
    const-string/jumbo v0, "android.intent.extra.TEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0614

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/InviteFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :goto_36
    return-object p1

    .line 239
    :pswitch_37
    const-string/jumbo v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_36

    .line 242
    :pswitch_44
    const-string/jumbo v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_36

    .line 237
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_37
        :pswitch_44
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/InviteFragment;->setHasOptionsMenu(Z)V

    .line 72
    if-eqz p1, :cond_3f

    .line 73
    const-string/jumbo v0, "referral_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "sms_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mSmsMessage:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "referrer_credit_host"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditHost:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "referrer_credit_guest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditGuest:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "pending_referrees"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mPendingReferrees:Ljava/util/List;

    .line 78
    const-string/jumbo v0, "earned_referrees"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mEarnedReferrees:Ljava/util/List;

    .line 80
    :cond_3f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 96
    const v0, 0x7f10000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/AirFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0e0623

    const/4 v6, 0x0

    .line 131
    const v2, 0x7f0300a3

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v2

    if-nez v2, :cond_25

    .line 136
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 137
    const/4 v1, 0x0

    .line 225
    .end local v1    # "view":Landroid/view/View;
    :goto_24
    return-object v1

    .line 140
    .restart local v1    # "view":Landroid/view/View;
    :cond_25
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 142
    .local v0, "user":Lcom/airbnb/android/models/User;
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsParagraph:Landroid/widget/TextView;

    const v3, 0x7f0e060c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/InviteFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/InviteFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/InviteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 145
    invoke-direct {p0}, Lcom/airbnb/android/fragments/InviteFragment;->setupViews()V

    .line 184
    :goto_58
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    new-instance v3, Lcom/airbnb/android/fragments/InviteFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/InviteFragment$2;-><init>(Lcom/airbnb/android/fragments/InviteFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    new-instance v3, Lcom/airbnb/android/fragments/InviteFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/InviteFragment$3;-><init>(Lcom/airbnb/android/fragments/InviteFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mTermsAndConditionsLink:Landroid/widget/TextView;

    new-instance v3, Lcom/airbnb/android/fragments/InviteFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/InviteFragment$4;-><init>(Lcom/airbnb/android/fragments/InviteFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mBtnInviteFriends:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/InviteFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/InviteFragment$5;-><init>(Lcom/airbnb/android/fragments/InviteFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const-string/jumbo v2, "account_page"

    invoke-static {v2}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackInviteFriendsLanding(Ljava/lang/String;)V

    goto :goto_24

    .line 147
    :cond_87
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 149
    new-instance v2, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/InviteFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/InviteFragment$1;-><init>(Lcom/airbnb/android/fragments/InviteFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2, p0}, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_58
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 116
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 112
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InviteFragment;->onSentClick()V

    .line 113
    const/4 v0, 0x1

    goto :goto_b

    .line 110
    nop

    :pswitch_data_12
    .packed-switch 0x7f080542
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 104
    const v1, 0x7f080542

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 105
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    :goto_13
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    return-void

    .line 105
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string/jumbo v0, "referral_url"

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "sms_message"

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mSmsMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "referrer_credit_host"

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditHost:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "referrer_credit_guest"

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditGuest:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "pending_referrees"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mPendingReferrees:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    const-string/jumbo v0, "earned_referrees"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mEarnedReferrees:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 92
    return-void
.end method

.method public onSentClick()V
    .registers 7

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InviteFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 122
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f040006

    const v3, 0x7f040008

    const v4, 0x7f040007

    const v5, 0x7f040009

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment;->mPendingReferrees:Ljava/util/List;

    iget-object v3, p0, Lcom/airbnb/android/fragments/InviteFragment;->mEarnedReferrees:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/SentReferralsFragment;->instanceForReferrees(Ljava/util/List;Ljava/util/List;)Lcom/airbnb/android/fragments/SentReferralsFragment;

    move-result-object v1

    .line 125
    .local v1, "next":Lcom/airbnb/android/fragments/SentReferralsFragment;
    const v2, 0x7f080025

    const-class v3, Lcom/airbnb/android/fragments/SentReferralsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 127
    return-void
.end method
