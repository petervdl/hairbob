.class Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;
.super Ljava/lang/Object;
.source "BaseVerifiedIdFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->animateCompletion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

.field final synthetic val$verificationDescription:Ljava/lang/String;

.field final synthetic val$verificationHeader:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 24
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->val$verificationHeader:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->val$verificationDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->getCircleBadgeView()Lcom/airbnb/android/views/CircleBadgeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/CircleBadgeView;->animateActivation(Z)V

    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->val$verificationHeader:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;->val$verificationDescription:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->showConfirmedFragment(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
