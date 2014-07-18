.class Lcom/airbnb/android/activities/CustomerServiceActivity$2;
.super Ljava/lang/Object;
.source "CustomerServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CustomerServiceActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CustomerServiceActivity;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$2;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$2;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-static {v0}, Lcom/airbnb/android/utils/CallHelper;->dialInstantSupport(Landroid/content/Context;)V

    .line 71
    return-void
.end method
