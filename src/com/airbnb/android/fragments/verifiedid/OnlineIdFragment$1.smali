.class Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;
.super Ljava/lang/Object;
.source "OnlineIdFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->initGoogleClientFragment()V
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
    .line 159
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGooglePlusSignInFailed()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$200(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 172
    return-void
.end method

.method public onGooglePlusSignedInSuccess(Lcom/google/android/gms/plus/PlusClient;)V
    .registers 3
    .param p1, "plusClient"    # Lcom/google/android/gms/plus/PlusClient;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUseGoogleSignIn:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->signInToGoogleAsync()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$100(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V

    .line 167
    :cond_d
    return-void
.end method
