.class Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;
.super Landroid/widget/BaseAdapter;
.source "TripsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/TripsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompanionCalloutAdapter"
.end annotation


# instance fields
.field private mMarket:Ljava/lang/String;

.field final synthetic this$0:Lcom/airbnb/android/fragments/TripsListFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/lang/String;)V
    .registers 3
    .param p2, "market"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;->mMarket:Ljava/lang/String;

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/lang/String;Lcom/airbnb/android/fragments/TripsListFragment$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/airbnb/android/fragments/TripsListFragment$1;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;-><init>(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 334
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 339
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030135

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;->mMarket:Ljava/lang/String;

    if-eqz v1, :cond_2f

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;->mMarket:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeCompanionOnboarding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 342
    const v1, 0x7f080354

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirTextView;

    const v2, 0x7f0e0373

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 345
    :cond_2f
    return-object v0
.end method
