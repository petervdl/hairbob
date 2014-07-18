.class public Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "PreListManageListingFragment.java"


# static fields
.field public static final ARGS_LISTING:Ljava/lang/String; = "listing"

.field private static final DIALOG_LYS_LEGAL:Ljava/lang/String; = "lys_legal"

.field private static final MAX_STEPS:I = 0x6

.field private static final REQUEST_CODE_NY_LEGAL_MODAL:I = 0x64


# instance fields
.field mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

.field mListButton:Lcom/airbnb/android/views/StickyButton;

.field mLocalLaws:Landroid/widget/TextView;

.field mLocalLawsLearnMoreText:Landroid/widget/TextView;

.field mLocalLawsSubText:Landroid/widget/TextView;

.field mOptionalDetails:Landroid/view/View;

.field mPhotoCheckBox:Landroid/widget/CheckBox;

.field mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

.field mProgressBar:Lcom/airbnb/android/views/StickyStepProgressBar;

.field mScrollView:Landroid/widget/ScrollView;

.field private mShownModal:Z

.field private mStepsRemaining:I

.field mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

.field mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->showLegalModal(Z)V

    return-void
.end method

.method private calculateStepsRemaining(Lcom/airbnb/android/models/Listing;)V
    .registers 11
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mStepsRemaining:I

    .line 323
    iget v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mStepsRemaining:I

    if-nez v2, :cond_b8

    .line 324
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mProgressBar:Lcom/airbnb/android/views/StickyStepProgressBar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyStepProgressBar;->incrementToStep(I)V

    .line 325
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->shouldShowActivity(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 328
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2}, Lcom/airbnb/android/views/StickyButton;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e04e2

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 329
    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string/jumbo v3, "impressions"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ml_pre_list"

    aput-object v3, v2, v4

    const-string/jumbo v3, "finish_button"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 331
    :cond_55
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    const v3, 0x7f0e04e2

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 361
    :goto_5d
    return-void

    .line 333
    :cond_5e
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2}, Lcom/airbnb/android/views/StickyButton;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e04ef

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 334
    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string/jumbo v3, "impressions"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ml_pre_list"

    aput-object v3, v2, v4

    const-string/jumbo v3, "list_button"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 336
    :cond_8b
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    const v3, 0x7f0e04ef

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 338
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    if-nez v2, :cond_ac

    .line 339
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :goto_a8
    invoke-direct {p0, v7}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->showLegalModal(Z)V

    goto :goto_5d

    .line 348
    :cond_ac
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_a8

    .line 354
    :cond_b8
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 355
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mProgressBar:Lcom/airbnb/android/views/StickyStepProgressBar;

    iget v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mStepsRemaining:I

    rsub-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyStepProgressBar;->incrementToStep(I)V

    .line 357
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001e

    iget v4, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mStepsRemaining:I

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mStepsRemaining:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "stepsRemaining":Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 359
    .local v0, "spanned":Landroid/text/Spanned;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_5d
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;
    .registers 6
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 79
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;-><init>()V

    .line 80
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "impressions"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "lys"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "pre_list"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v1
.end method

.method private setupLocalLaws()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method private setupLocalLawsFrance()V
    .registers 5

    .prologue
    .line 216
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsSubText:Landroid/widget/TextView;

    const v2, 0x7f0e0402

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsLearnMoreText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$8;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$8;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V

    .line 227
    .local v0, "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsLearnMoreText:Landroid/widget/TextView;

    const v2, 0x7f0e0401

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 228
    return-void
.end method

.method private showLegalModal(Z)V
    .registers 6
    .param p1, "cancelable"    # Z

    .prologue
    .line 364
    const-string/jumbo v1, "NY"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "lys_legal"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_53

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mShownModal:Z

    if-eqz v1, :cond_24

    if-eqz p1, :cond_53

    .line 365
    :cond_24
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e05bf

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e043e

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyHtmlText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, p0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    .line 368
    .local v0, "dialog":Lcom/airbnb/android/fragments/ZenDialog;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/ZenDialog;->setCancelable(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "lys_legal"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mShownModal:Z

    .line 372
    .end local v0    # "dialog":Lcom/airbnb/android/fragments/ZenDialog;
    :cond_53
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 376
    sparse-switch p1, :sswitch_data_52

    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 392
    :cond_9
    :goto_9
    return-void

    .line 378
    :sswitch_a
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string/jumbo v0, "ml_pre_list"

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string/jumbo v3, "activate_listing"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "profile_completed"

    aput-object v3, v2, v0

    const/4 v3, 0x4

    if-ne p2, v4, :cond_48

    const-string/jumbo v0, "success"

    :goto_2a
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 380
    if-ne p2, v4, :cond_9

    .line 381
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/User;->setHasProfilePic(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->updateViews(Lcom/airbnb/android/models/Listing;)V

    goto :goto_9

    .line 378
    :cond_48
    const-string/jumbo v0, "fail"

    goto :goto_2a

    .line 386
    :sswitch_4c
    if-ne p2, v4, :cond_4f

    move v0, v1

    :cond_4f
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mShownModal:Z

    goto :goto_9

    .line 376
    :sswitch_data_52
    .sparse-switch
        0x64 -> :sswitch_4c
        0x974d -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setListingObject(Lcom/airbnb/android/models/Listing;)V

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setHasOptionsMenu(Z)V

    .line 255
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 196
    const v0, 0x7f100013

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 198
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 92
    const v2, 0x7f0300d4

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 98
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    new-instance v2, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setupPhotosView(Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/CheckedLYSChoice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/CheckedLYSChoice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/CheckedLYSChoice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/CheckedLYSChoice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mOptionalDetails:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$7;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$7;-><init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const-string/jumbo v2, "FR"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 182
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setupLocalLawsFrance()V

    .line 187
    :goto_67
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mProgressBar:Lcom/airbnb/android/views/StickyStepProgressBar;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/views/StickyStepProgressBar;->initializeView(II)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->updateViews(Lcom/airbnb/android/models/Listing;)V

    .line 191
    return-object v1

    .line 184
    :cond_72
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setupLocalLaws()V

    goto :goto_67
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_62

    .line 212
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_c
    return v2

    .line 205
    :pswitch_d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 206
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "ml_post_list"

    :goto_24
    aput-object v2, v4, v3

    const/4 v2, 0x2

    const-string/jumbo v5, "general_nav"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "preview_click"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 210
    goto :goto_c

    .line 206
    .end local v0    # "i":Landroid/content/Intent;
    :cond_5d
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_24

    .line 203
    nop

    :pswitch_data_62
    .packed-switch 0x7f080546
        :pswitch_d
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 259
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e0757

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 261
    return-void
.end method

.method protected updateViews(Lcom/airbnb/android/models/Listing;)V
    .registers 11
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->updatePhotoDetails(Lcom/airbnb/android/models/Listing;)V

    .line 267
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPhotoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v5

    if-lez v5, :cond_105

    move v5, v6

    :goto_e
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 269
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_108

    move v5, v6

    :goto_1e
    invoke-virtual {v8, v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setChecked(Z)V

    .line 270
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 271
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle(Ljava/lang/String;)V

    .line 273
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->hideDescription()V

    .line 278
    :goto_37
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_112

    move v5, v6

    :goto_44
    invoke-virtual {v8, v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setChecked(Z)V

    .line 279
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_115

    .line 280
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle(Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->hideDescription()V

    .line 287
    :goto_5d
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v8

    if-lez v8, :cond_11c

    :goto_65
    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/CheckedLYSChoice;->setChecked(Z)V

    .line 288
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 289
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 290
    .local v2, "format":Ljava/text/NumberFormat;
    invoke-virtual {v2, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 291
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 292
    .local v0, "c":Ljava/util/Currency;
    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 293
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "priceString":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0e05b4

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    .local v4, "sb":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 296
    .local v1, "color":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v4, v1, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 297
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5, v4}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle(Landroid/text/Spannable;)V

    .line 299
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v5

    if-nez v5, :cond_11f

    .line 300
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->hideDescription()V

    .line 308
    .end local v0    # "c":Ljava/util/Currency;
    .end local v1    # "color":Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "format":Ljava/text/NumberFormat;
    .end local v3    # "priceString":Ljava/lang/String;
    .end local v4    # "sb":Landroid/text/Spannable;
    :goto_de
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/CheckedLYSChoice;->setChecked(Z)V

    .line 309
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_132

    .line 310
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle(Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/CheckedLYSChoice;->setDescription(Ljava/lang/String;)V

    .line 317
    :goto_101
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->calculateStepsRemaining(Lcom/airbnb/android/models/Listing;)V

    .line 318
    return-void

    :cond_105
    move v5, v7

    .line 267
    goto/16 :goto_e

    :cond_108
    move v5, v7

    .line 269
    goto/16 :goto_1e

    .line 275
    :cond_10b
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle()V

    goto/16 :goto_37

    :cond_112
    move v5, v7

    .line 278
    goto/16 :goto_44

    .line 284
    :cond_115
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle()V

    goto/16 :goto_5d

    :cond_11c
    move v6, v7

    .line 287
    goto/16 :goto_65

    .line 302
    .restart local v0    # "c":Ljava/util/Currency;
    .restart local v1    # "color":Landroid/text/style/ForegroundColorSpan;
    .restart local v2    # "format":Ljava/text/NumberFormat;
    .restart local v3    # "priceString":Ljava/lang/String;
    .restart local v4    # "sb":Landroid/text/Spannable;
    :cond_11f
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    const v6, 0x7f0e0523

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/CheckedLYSChoice;->setDescription(Ljava/lang/String;)V

    goto :goto_de

    .line 305
    .end local v0    # "c":Ljava/util/Currency;
    .end local v1    # "color":Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "format":Ljava/text/NumberFormat;
    .end local v3    # "priceString":Ljava/lang/String;
    .end local v4    # "sb":Landroid/text/Spannable;
    :cond_12c
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle()V

    goto :goto_de

    .line 313
    :cond_132
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setDescription()V

    .line 314
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CheckedLYSChoice;->setTitle()V

    goto :goto_101
.end method
