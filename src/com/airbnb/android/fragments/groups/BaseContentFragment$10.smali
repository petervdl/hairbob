.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->scrollToNotificationPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;I)V
    .registers 3

    .prologue
    .line 551
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$700(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;->val$position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 555
    return-void
.end method
