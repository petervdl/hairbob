.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 244
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iput-object p2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgListView:Landroid/widget/ListView;

    if-nez v0, :cond_7

    .line 253
    :goto_6
    return-void

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setCannedMessagesListViewPaddingHeight(Landroid/view/View;)V

    goto :goto_6
.end method
