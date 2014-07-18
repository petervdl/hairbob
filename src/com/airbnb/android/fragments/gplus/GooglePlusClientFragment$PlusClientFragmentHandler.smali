.class final Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;
.super Landroid/os/Handler;
.source "GooglePlusClientFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlusClientFragmentHandler"
.end annotation


# static fields
.field public static final WHAT_SIGNED_IN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;->this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 121
    :cond_5
    :goto_5
    return-void

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;->this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;->this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    # getter for: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;
    invoke-static {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$000(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;->this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    # getter for: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$100(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;->this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    # getter for: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$100(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;->this$0:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    # getter for: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;
    invoke-static {v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$000(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;->onGooglePlusSignedInSuccess(Lcom/google/android/gms/plus/PlusClient;)V

    goto :goto_5
.end method
