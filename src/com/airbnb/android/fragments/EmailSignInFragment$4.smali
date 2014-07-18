.class Lcom/airbnb/android/fragments/EmailSignInFragment$4;
.super Ljava/lang/Object;
.source "EmailSignInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$4;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Sign_In"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "click_connect_email"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "click_forgot_pw"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "forgot_password_click"

    invoke-static {v1}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLoginAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$4;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$000(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$4;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$400(Lcom/airbnb/android/fragments/EmailSignInFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/SignInTransitions;->moveToForgotPassword(Ljava/lang/String;)V

    .line 124
    return-void
.end method
