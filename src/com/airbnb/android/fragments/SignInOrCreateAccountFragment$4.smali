.class Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$4;
.super Ljava/lang/Object;
.source "SignInOrCreateAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$4;->this$0:Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Sign_In"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "click_connect_email"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "click_sign_up"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "signup_click"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLoginAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$4;->this$0:Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    # getter for: Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->access$100(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/SignInTransitions;->moveToEmailSignUp()V

    .line 122
    return-void
.end method