.class Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;
.super Ljava/lang/Object;
.source "StickyHeaderOnScrollListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->getHeaderView(ILandroid/view/ViewGroup;Landroid/widget/Adapter;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

.field final synthetic val$viewIndex:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;I)V
    .registers 3

    .prologue
    .line 124
    iput-object p1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;->this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    iput p2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;->val$viewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;->this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    # getter for: Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->access$000(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 130
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;->this$0:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    # getter for: Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->access$000(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;->val$viewIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 131
    return-void
.end method
