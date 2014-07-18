.class public Lcom/airbnb/android/fragments/HelpFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "HelpFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mHelp:Landroid/view/View;

.field mHowItWorks:Landroid/view/View;

.field mPrivacyPolicy:Landroid/view/View;

.field mTermsOfService:Landroid/view/View;

.field mVersionCell:Lcom/airbnb/android/views/GroupedCell;

.field mWhyHost:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/airbnb/android/fragments/HelpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/HelpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/airbnb/android/fragments/HelpFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/HelpFragment;-><init>()V

    return-object v0
.end method

.method private setupBuildVersionSettings()V
    .registers 5

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 116
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/airbnb/android/fragments/HelpFragment;->mVersionCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_36} :catch_37

    .line 120
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :goto_36
    return-void

    .line 117
    :catch_37
    move-exception v1

    goto :goto_36
.end method

.method private setupViews(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/airbnb/android/fragments/HelpFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/HelpFragment$1;-><init>(Lcom/airbnb/android/fragments/HelpFragment;)V

    .line 70
    .local v0, "ftueOnClick":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment;->mHowItWorks:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment;->mWhyHost:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 74
    .local v1, "user":Lcom/airbnb/android/models/User;
    iget-object v5, p0, Lcom/airbnb/android/fragments/HelpFragment;->mHowItWorks:Landroid/view/View;

    if-nez v1, :cond_55

    move v2, v3

    :goto_22
    invoke-static {v5, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 75
    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment;->mWhyHost:Landroid/view/View;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v5

    if-nez v5, :cond_30

    :cond_2f
    move v4, v3

    :cond_30
    invoke-static {v2, v4}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 77
    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment;->mHelp:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/HelpFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/HelpFragment$2;-><init>(Lcom/airbnb/android/fragments/HelpFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment;->mTermsOfService:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/HelpFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/HelpFragment$3;-><init>(Lcom/airbnb/android/fragments/HelpFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment;->mPrivacyPolicy:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/HelpFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/HelpFragment$4;-><init>(Lcom/airbnb/android/fragments/HelpFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HelpFragment;->setupBuildVersionSettings()V

    .line 104
    return-void

    :cond_55
    move v2, v4

    .line 74
    goto :goto_22
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    if-nez p2, :cond_4

    .line 46
    const/4 v0, 0x0

    .line 53
    :goto_3
    return-object v0

    .line 49
    :cond_4
    const v1, 0x7f03009d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/HelpFragment;->setupViews(Landroid/view/View;)V

    goto :goto_3
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 110
    const v0, 0x7f0e0754

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 111
    return-void
.end method
