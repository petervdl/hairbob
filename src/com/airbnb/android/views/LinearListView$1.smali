.class Lcom/airbnb/android/views/LinearListView$1;
.super Landroid/database/DataSetObserver;
.source "LinearListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/LinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/LinearListView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/LinearListView;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/airbnb/android/views/LinearListView$1;->this$0:Lcom/airbnb/android/views/LinearListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView$1;->this$0:Lcom/airbnb/android/views/LinearListView;

    # invokes: Lcom/airbnb/android/views/LinearListView;->setupChildren()V
    invoke-static {v0}, Lcom/airbnb/android/views/LinearListView;->access$000(Lcom/airbnb/android/views/LinearListView;)V

    .line 37
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView$1;->this$0:Lcom/airbnb/android/views/LinearListView;

    # invokes: Lcom/airbnb/android/views/LinearListView;->setupChildren()V
    invoke-static {v0}, Lcom/airbnb/android/views/LinearListView;->access$000(Lcom/airbnb/android/views/LinearListView;)V

    .line 42
    return-void
.end method
