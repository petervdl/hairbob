.class Lcom/airbnb/android/activities/ROResponseDialogActivity$1;
.super Ljava/lang/Object;
.source "ROResponseDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ROResponseDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ROResponseDialogActivity;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity$1;->this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity$1;->this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->finish()V

    .line 56
    return-void
.end method
