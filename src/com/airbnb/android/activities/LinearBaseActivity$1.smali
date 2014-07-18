.class Lcom/airbnb/android/activities/LinearBaseActivity$1;
.super Ljava/lang/Object;
.source "LinearBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/LinearBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/LinearBaseActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/LinearBaseActivity;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/activities/LinearBaseActivity$1;->this$0:Lcom/airbnb/android/activities/LinearBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/activities/LinearBaseActivity$1;->this$0:Lcom/airbnb/android/activities/LinearBaseActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/LinearBaseActivity$1;->this$0:Lcom/airbnb/android/activities/LinearBaseActivity;

    iget-object v2, p0, Lcom/airbnb/android/activities/LinearBaseActivity$1;->this$0:Lcom/airbnb/android/activities/LinearBaseActivity;

    # ++operator for: Lcom/airbnb/android/activities/LinearBaseActivity;->mStep:I
    invoke-static {v2}, Lcom/airbnb/android/activities/LinearBaseActivity;->access$004(Lcom/airbnb/android/activities/LinearBaseActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/LinearBaseActivity;->forStep(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    # invokes: Lcom/airbnb/android/activities/LinearBaseActivity;->showFragment(Landroid/support/v4/app/Fragment;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/LinearBaseActivity;->access$100(Lcom/airbnb/android/activities/LinearBaseActivity;Landroid/support/v4/app/Fragment;)V

    .line 32
    return-void
.end method
