.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$listView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/widget/AbsListView;)V
    .registers 3

    .prologue
    .line 606
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;->val$listView:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 612
    .local v1, "viewPos":I
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;->val$listView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I
    invoke-static {}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$800()I

    move-result v3

    neg-int v3, v3

    if-ge v2, v3, :cond_14

    .line 613
    add-int/lit8 v1, v1, 0x1

    .line 615
    :cond_14
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;->val$listView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 616
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_21

    .line 617
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # invokes: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->flashHintIcons(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$900(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/View;)V

    .line 619
    :cond_21
    return-void
.end method
