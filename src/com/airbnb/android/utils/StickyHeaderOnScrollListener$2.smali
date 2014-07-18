.class Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$2;
.super Ljava/lang/Object;
.source "StickyHeaderOnScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->handleRemoval(Landroid/widget/AbsListView;Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;Landroid/widget/Adapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$2;->this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$2;->this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    # getter for: Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->access$100(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 206
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$2;->this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    # getter for: Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->access$100(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_12
    return-void
.end method
