.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setupGlobalLayoutListener(Landroid/view/View;)V
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
    .line 234
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 239
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$5;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->getStatusBarActionBarHeight(Landroid/app/Activity;)I

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mStatusBarActionBarHeight:I
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$502(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;I)I

    .line 241
    :cond_17
    return-void
.end method
