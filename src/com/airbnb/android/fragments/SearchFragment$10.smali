.class Lcom/airbnb/android/fragments/SearchFragment$10;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->connectLocationClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 2

    .prologue
    .line 976
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$1100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 980
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const/4 v2, 0x1

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mHasCurrentLocation:Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$1202(Lcom/airbnb/android/fragments/SearchFragment;Z)Z

    .line 985
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$1300(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 986
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mHistoryHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$1400(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0804b4

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 987
    .local v0, "currLocationContainer":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 988
    new-instance v1, Lcom/airbnb/android/fragments/SearchFragment$10$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFragment$10$1;-><init>(Lcom/airbnb/android/fragments/SearchFragment$10;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    .end local v0    # "currLocationContainer":Landroid/view/View;
    :cond_27
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$1500(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 997
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mHistoryHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$1400(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0804b3

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_3f
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->querySearchAutocomplete()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$700(Lcom/airbnb/android/fragments/SearchFragment;)V

    .line 1000
    return-void
.end method
