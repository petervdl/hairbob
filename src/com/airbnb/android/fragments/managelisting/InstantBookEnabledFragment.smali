.class public Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "InstantBookEnabledFragment.java"


# static fields
.field private static final ARGS_LISTING:Ljava/lang/String; = "listing"

.field public static final DIALOG_REQ_NOTICE:I = 0x798

.field public static final DIALOG_REQ_VISIBILITY:I = 0x797


# instance fields
.field private mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

.field private mAdvanceNoticeDisabled:Z

.field mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

.field mEnableIBCheckbox:Lcom/airbnb/android/views/GroupedCheck;

.field private mIBDisabled:Z

.field private mIsEnabled:Z

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

.field private mVisibilityDisabled:Z

.field mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;
    .param p1, "x1"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 48
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;-><init>()V

    .line 49
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private updateState()V
    .registers 5

    .prologue
    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f000000

    .line 136
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Lcom/airbnb/android/views/GroupedCell;->setAlpha(F)V

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-boolean v3, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z

    if-eqz v3, :cond_2c

    :goto_14
    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setAlpha(F)V

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    iget v1, v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mTitleId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    iget v1, v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mTitleId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 142
    return-void

    :cond_2a
    move v0, v2

    .line 136
    goto :goto_b

    :cond_2c
    move v1, v2

    .line 137
    goto :goto_14
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    const/16 v2, 0x797

    if-ne p1, v2, :cond_1e

    .line 147
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sel_visibility"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "instantBookVisibility":Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 149
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    invoke-static {v2}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookVisibilityChanged(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)V

    .line 150
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->updateState()V

    .line 159
    .end local v1    # "instantBookVisibility":Ljava/lang/String;
    :goto_1d
    return-void

    .line 151
    :cond_1e
    const/16 v2, 0x798

    if-ne p1, v2, :cond_3c

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sel_notice"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "instantBookLeadTime":I
    invoke-static {v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 154
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    invoke-static {v2}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookAdvanceNoticeChanged(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V

    .line 155
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->updateState()V

    goto :goto_1d

    .line 157
    .end local v0    # "instantBookLeadTime":I
    :cond_3c
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "listing"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 62
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isInstantBookableBySomeone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getWhoCanBookInstantly()Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getInstantBookAdvanceNotice()Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 67
    const-string/jumbo v0, "instant_book_settings"

    const-string/jumbo v3, "disabled"

    invoke-static {v0, v3, v1}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIBDisabled:Z

    .line 68
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIBDisabled:Z

    if-nez v0, :cond_48

    const-string/jumbo v0, "instant_book_settings"

    const-string/jumbo v3, "visibility_disabled"

    invoke-static {v0, v3, v1}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_48
    move v0, v2

    :goto_49
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibilityDisabled:Z

    .line 69
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIBDisabled:Z

    if-nez v0, :cond_5b

    const-string/jumbo v0, "instant_book_settings"

    const-string/jumbo v3, "lead_time_disabled"

    invoke-static {v0, v3, v1}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5b
    move v1, v2

    :cond_5c
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeDisabled:Z

    .line 71
    invoke-static {}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookSettingsImpressions()V

    .line 72
    return-void

    :cond_62
    move v0, v1

    .line 68
    goto :goto_49
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mEnableIBCheckbox:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mEnableIBCheckbox:Lcom/airbnb/android/views/GroupedCheck;

    iget-boolean v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 98
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibilityDisabled:Z

    if-eqz v1, :cond_35

    .line 99
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 114
    :goto_28
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeDisabled:Z

    if-eqz v1, :cond_40

    .line 115
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 130
    :goto_31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->updateState()V

    .line 132
    return-object v0

    .line 101
    :cond_35
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28

    .line 117
    :cond_40
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_31
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 164
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 169
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 171
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 184
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 185
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 189
    return-void
.end method
