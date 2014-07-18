.class Lcom/airbnb/android/fragments/MessagesFragment$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MessagesFragment;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/airbnb/android/fragments/MessagesFragment$1;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment$1;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    # getter for: Lcom/airbnb/android/fragments/MessagesFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/airbnb/android/fragments/MessagesFragment;->access$000(Lcom/airbnb/android/fragments/MessagesFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment$1;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MessagesFragment;->refresh()V

    .line 127
    return-void
.end method
