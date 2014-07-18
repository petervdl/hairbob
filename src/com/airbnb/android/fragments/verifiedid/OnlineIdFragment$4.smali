.class Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;
.super Ljava/lang/Object;
.source "OnlineIdFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->onSignInError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 247
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setActiveState()V

    .line 250
    :cond_16
    return-void
.end method
