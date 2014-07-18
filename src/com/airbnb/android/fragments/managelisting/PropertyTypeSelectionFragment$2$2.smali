.class Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;
.super Ljava/lang/Object;
.source "PropertyTypeSelectionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;->this$1:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;->this$1:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesList:Lcom/airbnb/android/views/LinearListView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Lcom/airbnb/android/views/LinearListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/LinearListView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;->this$1:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 113
    .local v0, "scroll":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;->this$1:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 114
    return-void
.end method
