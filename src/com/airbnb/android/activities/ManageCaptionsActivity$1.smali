.class Lcom/airbnb/android/activities/ManageCaptionsActivity$1;
.super Ljava/lang/Object;
.source "ManageCaptionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageCaptionsActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ManageCaptionsActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageCaptionsActivity;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity$1;->this$0:Lcom/airbnb/android/activities/ManageCaptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity$1;->this$0:Lcom/airbnb/android/activities/ManageCaptionsActivity;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    const/4 v0, 0x1

    :goto_6
    # setter for: Lcom/airbnb/android/activities/ManageCaptionsActivity;->mCommitChanges:Z
    invoke-static {v1, v0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->access$002(Lcom/airbnb/android/activities/ManageCaptionsActivity;Z)Z

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageCaptionsActivity$1;->this$0:Lcom/airbnb/android/activities/ManageCaptionsActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->finish()V

    .line 142
    return-void

    .line 139
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method
