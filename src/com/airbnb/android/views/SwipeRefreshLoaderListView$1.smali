.class Lcom/airbnb/android/views/SwipeRefreshLoaderListView$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLoaderListView.java"

# interfaces
.implements Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/SwipeRefreshLoaderListView;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/views/SwipeRefreshLoaderListView$1;->this$0:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/views/SwipeRefreshLoaderListView$1;->this$0:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    iget-object v0, v0, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->mListView:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
