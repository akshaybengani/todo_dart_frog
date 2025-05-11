# Do your changes in schema.prisma file and then run this script
npx prisma migrate dev

# Generate prisma config for the table and changes
npx prisma generate

# Generate dart code for table changes and modifications
sudo dart run build_runner build
