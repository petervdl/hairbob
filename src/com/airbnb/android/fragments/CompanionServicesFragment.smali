.class public Lcom/airbnb/android/fragments/CompanionServicesFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CompanionServicesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;
    }
.end annotation


# static fields
.field private static final ARG_COMPANION_SERVICE:Ljava/lang/String; = "companion_service"

.field public static final ARG_SERVICE_TEXT:Ljava/lang/String; = "service_text"


# instance fields
.field private mCompanionService:Lcom/airbnb/android/enums/CompanionService;

.field mGridView:Landroid/widget/GridView;

.field private mSectionPadding:I

.field mServicesContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/CompanionServicesFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CompanionServicesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->finishAndReturnResult(Ljava/lang/String;)V

    return-void
.end method

.method private createNewSection(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 10
    .param p1, "headerResourceId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "stringResourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 78
    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301de

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .line 79
    .local v0, "sectionHeader":Lcom/airbnb/android/views/AirTextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 80
    iget v2, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mSectionPadding:I

    iget v3, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mSectionPadding:I

    iget v4, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mSectionPadding:I

    iget v5, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mSectionPadding:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/airbnb/android/views/AirTextView;->setPadding(IIII)V

    .line 82
    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301dd

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 83
    .local v1, "sectionServicesContainer":Landroid/widget/LinearLayout;
    invoke-direct {p0, v1, p2}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->populateContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mServicesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v2, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mServicesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private createServiceListGroupedCell(Ljava/lang/String;Z)Lcom/airbnb/android/views/GroupedCell;
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showTopBorder"    # Z

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030125

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 100
    .local v0, "cell":Lcom/airbnb/android/views/GroupedCell;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/GroupedCell;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setTextAllCaps(Z)V

    .line 102
    const v1, 0x7f020157

    const v2, 0x7f0a002b

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setIcon(II)V

    .line 103
    invoke-virtual {v0, p2}, Lcom/airbnb/android/views/GroupedCell;->showTopBorder(Z)V

    .line 104
    new-instance v1, Lcom/airbnb/android/fragments/CompanionServicesFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/CompanionServicesFragment$2;-><init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v0
.end method

.method private finishAndReturnResult(Ljava/lang/String;)V
    .registers 5
    .param p1, "resultText"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, "resultData":Landroid/content/Intent;
    const-string/jumbo v1, "service_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 152
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/enums/CompanionService;)Lcom/airbnb/android/fragments/CompanionServicesFragment;
    .registers 5
    .param p0, "companionService"    # Lcom/airbnb/android/enums/CompanionService;

    .prologue
    .line 40
    new-instance v1, Lcom/airbnb/android/fragments/CompanionServicesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/CompanionServicesFragment;-><init>()V

    .line 41
    .local v1, "fragment":Lcom/airbnb/android/fragments/CompanionServicesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "companion_service"

    invoke-virtual {p0}, Lcom/airbnb/android/enums/CompanionService;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method

.method private populateContainer(Landroid/view/ViewGroup;Ljava/util/List;)V
    .registers 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "stringResourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 91
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_22

    const/4 v2, 0x1

    :goto_18
    invoke-direct {p0, v3, v2}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->createServiceListGroupedCell(Ljava/lang/String;Z)Lcom/airbnb/android/views/GroupedCell;

    move-result-object v0

    .line 92
    .local v0, "cell":Lcom/airbnb/android/views/GroupedCell;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "cell":Lcom/airbnb/android/views/GroupedCell;
    :cond_22
    const/4 v2, 0x0

    goto :goto_18

    .line 94
    :cond_24
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 49
    const v0, 0x7f03007f

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 50
    .local v10, "view":Landroid/view/View;
    invoke-static {p0, v10}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 52
    invoke-static {}, Lcom/airbnb/android/enums/CompanionService;->values()[Lcom/airbnb/android/enums/CompanionService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "companion_service"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mCompanionService:Lcom/airbnb/android/enums/CompanionService;

    .line 53
    iget-object v0, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mCompanionService:Lcom/airbnb/android/enums/CompanionService;

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompanionService;->getServices()Ljava/util/List;

    move-result-object v9

    .line 55
    .local v9, "services":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/ServiceListSection;>;"
    iget-object v11, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030109

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->getListResourceIds()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;-><init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;Landroid/content/Context;ILjava/util/List;Lcom/airbnb/android/fragments/CompanionServicesFragment$1;)V

    invoke-virtual {v11, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/airbnb/android/fragments/CompanionServicesFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment$1;-><init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment;->mSectionPadding:I

    .line 68
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_59
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_77

    .line 69
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/models/localcompanion/ServiceListSection;

    .line 70
    .local v8, "section":Lcom/airbnb/android/models/localcompanion/ServiceListSection;
    invoke-virtual {v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->getHeaderResourceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 71
    .local v7, "resourceId":Ljava/lang/Integer;
    invoke-virtual {v8}, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->getListResourceIds()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->createNewSection(Ljava/lang/Integer;Ljava/util/List;)V

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 74
    .end local v7    # "resourceId":Ljava/lang/Integer;
    .end local v8    # "section":Lcom/airbnb/android/models/localcompanion/ServiceListSection;
    :cond_77
    return-object v10
.end method
