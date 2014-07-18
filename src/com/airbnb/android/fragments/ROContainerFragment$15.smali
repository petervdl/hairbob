.class Lcom/airbnb/android/fragments/ROContainerFragment$15;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardIfTabBarOverlapsReplyEditText(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 2

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$15;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$15;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1322
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$15;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardIfTabBarOverlapsReplyEditTextImpl()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2400(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    .line 1324
    :cond_d
    return-void
.end method
