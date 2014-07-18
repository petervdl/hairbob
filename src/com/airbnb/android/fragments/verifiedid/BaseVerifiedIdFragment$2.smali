.class Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$2;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$AnimationCompletionListener;

    .line 39
    .local v0, "listener":Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$AnimationCompletionListener;
    if-eqz v0, :cond_d

    .line 40
    invoke-interface {v0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$AnimationCompletionListener;->didCompleteAnimation()V

    .line 42
    :cond_d
    return-void
.end method
