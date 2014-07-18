.class Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;
.super Ljava/lang/Object;
.source "LinearListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/LinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnClickListener"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/airbnb/android/views/LinearListView;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/views/LinearListView;I)V
    .registers 3
    .param p2, "position"    # I

    .prologue
    .line 256
    iput-object p1, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->this$0:Lcom/airbnb/android/views/LinearListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p2, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->mPosition:I

    .line 258
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->this$0:Lcom/airbnb/android/views/LinearListView;

    # getter for: Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;
    invoke-static {v0}, Lcom/airbnb/android/views/LinearListView;->access$100(Lcom/airbnb/android/views/LinearListView;)Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->this$0:Lcom/airbnb/android/views/LinearListView;

    # getter for: Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/airbnb/android/views/LinearListView;->access$200(Lcom/airbnb/android/views/LinearListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 263
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->this$0:Lcom/airbnb/android/views/LinearListView;

    # getter for: Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;
    invoke-static {v0}, Lcom/airbnb/android/views/LinearListView;->access$100(Lcom/airbnb/android/views/LinearListView;)Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->this$0:Lcom/airbnb/android/views/LinearListView;

    iget v3, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->mPosition:I

    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->this$0:Lcom/airbnb/android/views/LinearListView;

    # getter for: Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/airbnb/android/views/LinearListView;->access$200(Lcom/airbnb/android/views/LinearListView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget v4, p0, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;->mPosition:I

    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/airbnb/android/views/LinearListView$OnItemClickListener;->onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V

    .line 266
    :cond_2a
    return-void
.end method
