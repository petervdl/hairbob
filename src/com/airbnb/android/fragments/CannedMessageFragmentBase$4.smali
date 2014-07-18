.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->toggleCannedMessages()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I
    invoke-static {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$400(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)I

    move-result v0

    if-lez v0, :cond_18

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$4;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMessagesContainerHeight:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$400(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    :cond_18
    return-void
.end method
