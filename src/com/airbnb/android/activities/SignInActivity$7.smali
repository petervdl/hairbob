.class Lcom/airbnb/android/activities/SignInActivity$7;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->onSignInError()V
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
    .line 797
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$7;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$7;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const v1, 0x7f0e01b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 801
    return-void
.end method
