.class Lcom/airbnb/android/views/SortBySelectorView$1;
.super Ljava/lang/Object;
.source "SortBySelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/SortBySelectorView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/SortBySelectorView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/SortBySelectorView;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/views/SortBySelectorView$1;->this$0:Lcom/airbnb/android/views/SortBySelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/airbnb/android/views/SortBySelectorView$1;->this$0:Lcom/airbnb/android/views/SortBySelectorView;

    # getter for: Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/airbnb/android/views/SortBySelectorView;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    # setter for: Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;
    invoke-static {v1, v0}, Lcom/airbnb/android/views/SortBySelectorView;->access$002(Lcom/airbnb/android/views/SortBySelectorView;Lcom/airbnb/android/models/SearchInfo$SortType;)Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView$1;->this$0:Lcom/airbnb/android/views/SortBySelectorView;

    # invokes: Lcom/airbnb/android/views/SortBySelectorView;->updateViewSelection()V
    invoke-static {v0}, Lcom/airbnb/android/views/SortBySelectorView;->access$200(Lcom/airbnb/android/views/SortBySelectorView;)V

    .line 72
    return-void
.end method
