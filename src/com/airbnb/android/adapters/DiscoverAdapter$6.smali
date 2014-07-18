.class Lcom/airbnb/android/adapters/DiscoverAdapter$6;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getLocationsView(Lcom/airbnb/android/models/TravelLocationsFeedItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$finalConvertView:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 288
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$finalConvertView:Landroid/view/View;

    iput p4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$parent:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    .line 293
    .local v0, "currListView":Landroid/widget/AbsListView;
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$finalConvertView:Landroid/view/View;

    iget v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$position:I

    iget-object v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$position:I

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 294
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$6;->val$finalConvertView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 295
    return-void
.end method
