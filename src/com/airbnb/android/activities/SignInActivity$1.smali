.class Lcom/airbnb/android/activities/SignInActivity$1;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->googleOAuthSignIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/SignInActivity;

.field final synthetic val$accountEmails:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 435
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$1;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/SignInActivity$1;->val$accountEmails:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 439
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 440
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$1;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$1;->val$accountEmails:[Ljava/lang/String;

    aget-object v1, v1, p2

    # setter for: Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->access$002(Lcom/airbnb/android/activities/SignInActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$1;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # invokes: Lcom/airbnb/android/activities/SignInActivity;->signInToGoogleAsync()V
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$100(Lcom/airbnb/android/activities/SignInActivity;)V

    .line 442
    return-void
.end method
