.class Lcom/airbnb/android/activities/groups/GroupsFtue$1;
.super Ljava/lang/Object;
.source "GroupsFtue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/groups/GroupsFtue;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/groups/GroupsFtue;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/groups/GroupsFtue;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/activities/groups/GroupsFtue$1;->this$0:Lcom/airbnb/android/activities/groups/GroupsFtue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/activities/groups/GroupsFtue$1;->this$0:Lcom/airbnb/android/activities/groups/GroupsFtue;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/groups/GroupsFtue;->finish()V

    .line 38
    return-void
.end method
