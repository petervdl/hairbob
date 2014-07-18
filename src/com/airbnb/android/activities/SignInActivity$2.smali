.class Lcom/airbnb/android/activities/SignInActivity$2;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->initGoogleClientFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/SignInActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity;)V
    .registers 2

    .prologue
    .line 453
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$2;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGooglePlusSignInFailed()V
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$2;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$300(Lcom/airbnb/android/activities/SignInActivity;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 465
    return-void
.end method

.method public onGooglePlusSignedInSuccess(Lcom/google/android/gms/plus/PlusClient;)V
    .registers 3
    .param p1, "plusClient"    # Lcom/google/android/gms/plus/PlusClient;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$2;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mUseGoogleSignIn:Z
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$200(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$2;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # invokes: Lcom/airbnb/android/activities/SignInActivity;->signInToGoogleAsync()V
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$100(Lcom/airbnb/android/activities/SignInActivity;)V

    .line 460
    :cond_d
    return-void
.end method
