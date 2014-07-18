.class Lcom/airbnb/android/fragments/SearchFilterFragment$7;
.super Ljava/lang/Object;
.source "SearchFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

.field final synthetic val$showMoreAmenity:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFilterFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$7;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$7;->val$showMoreAmenity:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$7;->val$showMoreAmenity:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$7;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    # invokes: Lcom/airbnb/android/fragments/SearchFilterFragment;->showAllAmenities()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$900(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    .line 219
    const-string/jumbo v0, "advanced_filters_click"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackFiltersAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 220
    return-void
.end method
