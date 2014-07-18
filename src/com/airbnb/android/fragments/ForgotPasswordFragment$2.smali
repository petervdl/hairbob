.class Lcom/airbnb/android/fragments/ForgotPasswordFragment$2;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ForgotPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$2;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Sign_In"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "click_connect_email"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "click_forgot_pw"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "click_reset_pw"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "reset_password_click"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLoginAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$2;->this$0:Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    # invokes: Lcom/airbnb/android/fragments/ForgotPasswordFragment;->resetPassword()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->access$200(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V

    .line 98
    return-void
.end method
