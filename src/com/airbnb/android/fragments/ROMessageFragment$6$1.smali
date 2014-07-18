.class Lcom/airbnb/android/fragments/ROMessageFragment$6$1;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMessageFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ROMessageFragment$6;

.field final synthetic val$numItems:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMessageFragment$6;I)V
    .registers 3

    .prologue
    .line 450
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6$1;->this$1:Lcom/airbnb/android/fragments/ROMessageFragment$6;

    iput p2, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6$1;->val$numItems:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6$1;->this$1:Lcom/airbnb/android/fragments/ROMessageFragment$6;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6$1;->val$numItems:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 454
    return-void
.end method
